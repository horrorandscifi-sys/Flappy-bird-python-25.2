# TERMINAL CALC SUPREME V4.0 (Enterprise Edition)

A powerful calculation complex built on a distributed architecture of VBScript and Batch. No compilers or third-party software required. Works out of the box on any Windows system.

## 📂 Project Structure
*   `run.bat` — **Main Executive File**. Always start here!
*   `bin/` — Math core and diagnostic modules.
*   `data/` — Local Storage (Memory DB).
*   `auth/` — Security and access control module.
*   `logs/` — Event logging and error tracking system.

## 🚀 Quick Start
1. Download the repository (or use `git clone`).
2. Run **`run.bat`**.
3. Pass the security check (Default Pass: **1337**).
4. Enter your mathematical expression after system initialization.

## 🕹 Terminal Commands
*   `2+2*2` — Standard calculation (follows operator precedence).
*   `save [number]` — Store a value in the secure memory cell.
*   `load` — Read the last saved value from memory.
*   `backup` — Force create an archival copy of session logs.
*   `exit` — Securely terminate the session.

## 🛠 Compilation to .EXE
To create a portable standalone version:
1. Run `build.bat`.
2. Follow the instructions in the **IExpress** Wizard.
3. Select `config.sed` as the configuration file.

## ⚠️ System Requirements
*   **OS:** Windows 7 / 10 / 11.
*   **Arch:** x64 / x86.
*   **Permissions:** Administrator rights recommended for log writing.

---
*Developed by Deep Night Coding Studio (c) 2024*
