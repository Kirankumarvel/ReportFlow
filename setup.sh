#!/bin/bash

echo "🔹 Setting up ReportFlow..."

# Create necessary directories
mkdir -p logs

# Set up cron job
(crontab -l 2>/dev/null; echo "0 8 * * * $(pwd)/generate_report.sh && $(pwd)/send_report.sh") | crontab -

echo "✅ Setup complete!"
