from fastapi import FastAPI, Form, Request
from fastapi.responses import HTMLResponse, RedirectResponse
from fastapi.templating import Jinja2Templates
import sqlite3
import uvicorn

app = FastAPI()

templates = Jinja2Templates(directory="templates")

# DATABASE
conn = sqlite3.connect("todos.db", check_same_thread=False)
cursor = conn.cursor()

cursor.execute("""
CREATE TABLE IF NOT EXISTS todos (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    task TEXT
)
""")

conn.commit()


# HOME PAGE
@app.get("/", response_class=HTMLResponse)
def home(request: Request):

    cursor.execute("SELECT * FROM todos")
    todos = cursor.fetchall()

    return templates.TemplateResponse(
        "index.html",
        {
            "request": request,
            "todos": todos
        }
    )


# ADD TODO
@app.post("/add")
def add(task: str = Form(...)):

    cursor.execute(
        "INSERT INTO todos (task) VALUES (?)",
        (task,)
    )

    conn.commit()

    return RedirectResponse("/", status_code=303)


# RUN SERVER
if __name__ == "__main__":
    uvicorn.run(app, host="0.0.0.0", port=8080)
