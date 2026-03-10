document
  .getElementById("trigger-stress")
  .addEventListener("click", function () {
    const logs = document.getElementById("log-display");
    const cpu = document.getElementById("cpu-load");
    const fill = document.querySelector(".fill");

    logs.innerText += `\n[${new Date().toISOString()}] WARNING: Heavy load detected - Memory usage spiking!`;
    logs.innerText += `\n[${new Date().toISOString()}] CRITICAL: CPU usage reached 98% during operation EXEC_LOAD.`;

    cpu.innerText = "CPU: 98%";
    cpu.style.color = "#ef4444";
    fill.style.width = "98%";
    fill.style.backgroundColor = "#ef4444";

    setTimeout(() => {
      alert(
        "🚨 AI Alert Triggered: Abnormal CPU spike detected. Monitoring system auto-scaling initiated.",
      );
    }, 500);
  });
