# 🚀 ReportFlow: Automated Daily Report Generator

**ReportFlow** automates the collection of system stats and CI/CD deployment statuses, sending a summary report to your team via **Slack/Email**. Stay updated without manual effort!

---

## 📌 Features
- **Automated daily reports** with system stats & CI/CD status
- Supports **Slack & Email notifications**
- **Easy setup** with a single script
- Logs reports for reference

---

## 📂 Project Structure

```plaintext
ReportFlow/
├── generate_report.sh   # Collects system stats & CI/CD status
├── send_report.sh       # Sends report via Slack/Email
├── config.env           # Configuration file for report settings
├── setup.sh             # Installs dependencies & sets up cron job
├── README.md            # Project documentation
├── .gitignore           # Excludes sensitive files
├── logs/                # Stores generated reports
```

---

## 🛠️ Installation & Setup

### 1️⃣ Clone the Repository
```bash
git clone https://github.com/Kirankumarvel/ReportFlow.git
cd ReportFlow
```

### 2️⃣ Configure Report Settings
Edit `config.env`:

```bash
REPORT_TIME="08:00"
NOTIFICATION_METHOD="slack"   # Options: slack, email
SLACK_WEBHOOK_URL="https://hooks.slack.com/..."
EMAIL_RECIPIENT="team@example.com"
```

### 3️⃣ Make Scripts Executable
```bash
chmod +x generate_report.sh send_report.sh setup.sh
```

### 4️⃣ Run the Setup Script
```bash
./setup.sh
```

---

## 🚀 Usage

### 🔹 Generate a Report Manually
```bash
./generate_report.sh
```

### 🔹 Send Report Manually
```bash
./send_report.sh
```

### 🔹 Automate Reports with Cron Jobs
To send the report every day at 8 AM, add this to crontab:
```bash
0 8 * * * /path/to/ReportFlow/generate_report.sh && /path/to/ReportFlow/send_report.sh
```

---

## 📜 Future Enhancements
- Add report customization options
- Store reports in a database for analytics
- Add support for Microsoft Teams notifications

---

## 📃 License
MIT License © 2025 

---

🚀 Boost your team's efficiency with ReportFlow!
