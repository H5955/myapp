from flask import Flask, render_template, send_from_directory
import shutil
import psutil
import os
import json

app = Flask(__name__)

@app.route("/")
def home():

    # STORAGE
    total, used, free = shutil.disk_usage("/storage/emulated/0")

    total = round(total / (1024**3), 2)
    used = round(used / (1024**3), 2)
    free = round(free / (1024**3), 2)

    storage_percent = round((used / total) * 100, 1)

    # RAM
    ram = psutil.virtual_memory()

    ram_total = round(ram.total / (1024**3), 2)
    ram_used = round(ram.used / (1024**3), 2)
    ram_percent = ram.percent

    # BATTERY
    try:
        battery_info = os.popen(
            "termux-battery-status"
        ).read()

        battery_data = json.loads(battery_info)

        battery_percent = battery_data["percentage"]

    except:
        battery_percent = 0

    # CPU
    try:
        cpu_percent = psutil.cpu_percent(interval=1)

    except:
        cpu_percent = 0

    return render_template(
        "storage.html",

        total=total,
        used=used,
        free=free,
        storage_percent=storage_percent,

        ram_total=ram_total,
        ram_used=ram_used,
        ram_percent=ram_percent,

        battery_percent=battery_percent,

        cpu_percent=cpu_percent
    )

@app.route("/manifest.json")
def manifest():
    return send_from_directory(".", "manifest.json")

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
