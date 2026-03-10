# AI Monitoring System Deep-Dive

## Overview

The platform uses a modular AI approach to system health monitoring, focusing on log analysis and behavioral anomaly detection.

## Components

### 1. Log Analyzer (`log_analyzer.py`)

- **Function**: Continuously tails application and system logs.
- **Pattern Matching**: Uses regex to identify known error signatures and critical failures.
- **AI-Agent Integration**: Forwards critical events to the Alert Manager.

### 2. Anomaly Detector (`anomaly_detector.py`)

- **Metric Ingestion**: Scrapes CPU and Memory metrics.
- **Detection Logic**: Uses a statistical baseline to identify values that exceed standard deviations (simulated for this repository).
- **Proactive Scaling**: Can be configured to trigger infrastructure scaling via Terraform.

### 3. Alert Manager (`alert_manager.py`)

- **Notification Routing**: Routes alerts based on severity (LOW, MEDIUM, HIGH, CRITICAL).
- **Consolidation**: Filters redundant alerts to prevent notification fatigue.
