import random

def detect_anomaly(metric_value, threshold=90):
    """
    Simulates anomaly detection using a statistical threshold.
    In a real scenario, this would use an ML model (e.g., Isolation Forest).
    """
    if metric_value > threshold:
        return True
    return False

if __name__ == "__main__":
    print("🧠 Anomaly Detector Initialized...")
    while True:
        current_cpu = random.randint(10, 100)
        if detect_anomaly(current_cpu):
            print(f"⚠️ ANOMALY: CPU Spike {current_cpu}% detected. Triggering Alert Manager.")
        import time
        time.sleep(3)
