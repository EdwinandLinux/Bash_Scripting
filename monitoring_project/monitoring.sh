# Load config
source ./config.cfg
# Get CPU usage
cpu_usage=$(top-bn1| grep "Cpu(s)" | awk '{print 100 - $8}')
# Get Memory usage
mem_usage=$( free | awk '/Mem:/{print("%0.2"), $3/$2 * 100}')
