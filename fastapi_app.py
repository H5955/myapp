from fastapi import FastAPI, Form, Request
from fastapi.responses import HTMLResponse, RedirectResponse
from fastapi.templating import Jinja2Templates
from fastapi.staticfiles import StaticFiles

import sqlite3
import uvicorn

# DATABASE
conn = sqlite3.connect("todos.db", check_same_thread=False)
cursor = conn.cursor()

# CREATE TABLE
cursor.execute("""
CREATE TABLE IF NOT EXISTS tasks (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    task TEXT,
    done INTEGER DEFAULT 0,
    due_date TEXT
)
""")

conn.commit()

# FASTAPI APP
app = FastAPI()

# STATIC FILES
app.mount("/static", StaticFiles(directory="static"), name="static")

# TEMPLATES
templates = Jinja2Templates(directory="templates")

# GET TASKS
def get_tasks():

    cursor.execute(
        "SELECT id, task, done, due_date FROM tasks"
    )

    return cursor.fetchall()

# HOME PAGE
@app.get("/", response_class=HTMLResponse)
def home(request: Request):

    return templates.TemplateResponse(
        "index.html",
        {
            "request": request,
            "todos": get_tasks()
        }
    )

# ADD TASK
@app.post("/add")
def add(
    task: str = Form(...),
    due_date: str = Form("")
):

    if task.strip() == "":
        return RedirectResponse("/", status_code=303)

    cursor.execute(
        """
        INSERT INTO tasks
        (task, due_date)
        VALUES (?, ?)
        """,
        (task, due_date)
    )

    conn.commit()

    return RedirectResponse("/", status_code=303)

# TOGGLE COMPLETE
@app.post("/toggle/{task_id}")
def toggle(task_id: int):

    cursor.execute(
        "UPDATE tasks SET done = NOT done WHERE id=?",
        (task_id,)
    )

    conn.commit()

    return RedirectResponse("/", status_code=303)

# DELETE TASK
@app.post("/delete/{task_id}")
def delete(task_id: int):

    cursor.execute(
        "DELETE FROM tasks WHERE id=?",
        (task_id,)
    )

    conn.commit()

    return RedirectResponse("/", status_code=303)

# RUN APP
if __name__ == "__main__":
    uvicorn.run(app, host="0.0.0.0", port=8000)
