FROM ollama/ollama:latest

# Optional: install curl for health checks
RUN apt-get update && apt-get install -y curl

# Expose Ollama default API port
EXPOSE 11434

# Start Ollama server when the container runs
CMD ["serve"]
