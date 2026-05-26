const input = document.getElementById("taskInput");
const addBtn = document.getElementById("addBtn");
const todoList = document.getElementById("todoList");

addBtn.addEventListener("click", addTodo);

loadTodos();

async function loadTodos() {

    const response = await fetch("/todos");

    const todos = await response.json();

    todoList.innerHTML = "";

    todos.forEach(todo => {
        createTodo(todo.id, todo.task);
    });
}

async function addTodo() {

    const task = input.value.trim();

    if (task === "") {
        alert("Enter a task");
        return;
    }

    const response = await fetch("/add", {
        method: "POST",
        headers: {
            "Content-Type": "application/json"
        },
        body: JSON.stringify({ task: task })
    });

    const data = await response.json();

    createTodo(data.id, data.task);

    input.value = "";
}

function createTodo(id, task) {

    const li = document.createElement("li");

    const text = document.createElement("span");
    text.innerText = task;

    const delBtn = document.createElement("button");
    delBtn.innerText = "Delete";

    delBtn.onclick = async () => {

        await fetch(`/delete/${id}`, {
            method: "DELETE"
        });

        li.remove();
    };

    li.appendChild(text);
    li.appendChild(delBtn);

    todoList.appendChild(li);
}
