# Open Source Audit Project — Git

## Student Details
Name: Ipsita Singh
Registration Number: 24BCE11465 

**Name:** Ipsita Singh
**Registration Number:** 24BCE11465

---

## Project Overview

This project is part of the Open Source Software course. The objective is to explore the open-source tool Git and gain an understanding of both its technical features and underlying philosophy.

In addition to the report, five shell scripts have been developed to showcase practical Linux skills, including system inspection, package management, file analysis, and automation.
---

## Chosen Software
Git (Version Control System)

## Scripts Overview
**Git — Distributed Version Control System**

### Script 1: System Identity Report
Displays system information like kernel, user, uptime, and OS details.
Git is used to track changes in code and enables collaboration among developers without relying on a central server.

### Script 2: Package Inspector
Checks if Git is installed and displays its version and description.
---

### Script 3: Disk Auditor
Analyzes important directories and shows permissions and size.
## System Requirements

### Script 4: Log Analyzer
Counts keyword occurrences in a log file.
Before running this project, ensure the following:

### Script 5: Manifesto Generator
Generates a personalized open-source philosophy file.
* Linux-based system (Ubuntu preferred)
* Bash shell (default in Linux)
* Git installed
* Basic terminal access

## How to Run
---

## Environment Setup

### Step 1: Update System Packages

Open terminal and run:

```bash
sudo apt update
```

---

### Step 2: Install Git (if not already installed)

```bash
sudo apt install git -y
```

To verify installation:

```bash
git --version
```

---

### Step 3: Download the Project

Clone the repository:

```bash
git clone https://github.com/your-username/oss-audit-24BAI10489.git
```

Move into the project directory:

```bash
cd oss-audit-24BAI10489
```

---

### Step 4: Give Execution Permission to Scripts

```bash
chmod +x *.sh
```

---

## Running the Scripts

Each script can be executed using the following format:

```bash
chmod +x script_name.sh
./script_name.sh
```

---

## Script Details and Execution

### 1. System Identity Report

Displays system information such as kernel version, OS, uptime, and user.

```bash
./script1_system_identity.sh
```

---

### 2. FOSS Package Inspector

Checks whether Git is installed and displays version and description.

```bash
./script2_package_inspector.sh
```

---

### 3. Disk and Permission Auditor

Analyzes key system directories and prints size, ownership, and permissions.

```bash
./script3_disk_auditor.sh
```

---

### 4. Log File Analyzer

Counts occurrences of a keyword (default: "error") in a log file.

```bash
./script4_log_analyzer.sh /var/log/syslog
```

Optional keyword:

```bash
./script4_log_analyzer.sh /var/log/syslog warning
```

---

### 5. Open Source Manifesto Generator

Generates a personalized open-source statement based on user input.

```bash
./script5_manifesto.sh
```

---

## Configuration Notes

* Script 2 uses `apt` (Debian/Ubuntu systems).
* If using Fedora/CentOS, replace with `rpm` commands.
* Script 4 requires access to system log files (may need sudo).

---

## Dependencies

* Bash shell
* Core Linux utilities:

  * `grep`
  * `awk`
  * `du`
  * `ls`
  * `uptime`
  * `whoami`

(All are pre-installed on most Linux systems.)

---

## Expected Output

Each script prints structured output directly in the terminal.

Example outputs include:

* System details (kernel, user, uptime)
* Package information (version, description)
* Directory permissions and sizes
* Log keyword analysis results
* Generated manifesto text file

---

## Notes

* All scripts are tested on Ubuntu Linux.
* No external libraries are required.
* Scripts are designed to be simple, readable, and easy to modify.

---

## Conclusion

This project helped in understanding how open-source tools like Git operate both technically and philosophically. It also provided hands-on experience with Linux shell scripting and system-level automation.

---
## Run Entire Project in One Command 

This project can be fully executed using a single command from the terminal.

### Step:

```bash
chmod +x run_all.sh
./run_all.sh
```

This will:

* Check and install Git if required
* Grant execution permissions
* Run all five scripts sequentially
* Display outputs directly in terminal

No GUI or additional setup is required.
