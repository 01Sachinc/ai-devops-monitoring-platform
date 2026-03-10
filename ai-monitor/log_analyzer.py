import time
import re
import os

class LogAnalyzer:
    def __init__(self, log_path):
        self.log_path = log_path
        self.patterns = {
            'ERROR': r'ERROR|CRITICAL',
            'WARNING': r'WARNING',
            'LOAD': r'EXEC_LOAD|Heavy load'
        }

    def analyze(self):
        print(f"🔍 AI Analyzer starting on {self.log_path}...")
        if not os.path.exists(self.log_path):
            print("⚠️ Logs not found. Waiting...")
            return

        with open(self.log_path, 'r') as f:
            lines = f.readlines()
            for line in lines[-10:]: # Look at recent logs
                for label, pattern in self.patterns.items():
                    if re.search(pattern, line):
                        print(f"🚨 [AI ALERT] {label} detected: {line.strip()}")

if __name__ == "__main__":
    analyzer = LogAnalyzer("/var/log/app.log")
    while True:
        analyzer.analyze()
        time.sleep(5)
