def trigger_alert(service, severity, message):
    print("\n" + "="*40)
    print(f"🔔 [ALERT SYSTEM] Notification Sent!")
    print(f"🚨 Service: {service}")
    print(f"🔴 Severity: {severity}")
    print(f"💬 Message: {message}")
    print("="*40 + "\n")

if __name__ == "__main__":
    trigger_alert("Web-Tier", "HIGH", "Simulated system failure detected by AI Agent.")
