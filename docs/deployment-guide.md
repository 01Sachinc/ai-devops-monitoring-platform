# Deployment Guide

Follow these steps to deploy the full AI DevOps Monitoring Platform.

## Local Deployment (Docker)

1. Ensure Docker and Docker Compose are installed.
2. Run the deployment script:
   ```bash
   ./scripts/deploy.sh
   ```
3. Access services:
   - Web App: `http://localhost:8080`
   - Prometheus: `http://localhost:9090`
   - Grafana: `http://localhost:3000`

## Infrastructure Deployment (Terraform)

1. Configure AWS credentials.
2. Navigate to the terraform directory:
   ```bash
   cd terraform
   terraform init
   terraform apply
   ```

## Running the AI Monitor

Once the containers are up, trigger the AI analyzer:

```bash
./scripts/monitor.sh
```
