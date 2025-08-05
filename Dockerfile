FROM ollama/ollama:latest

# Install curl (required for health check)
RUN apt-get update && apt-get install -y curl

# Copy the entrypoint script into the container
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Expose Ollama default port
EXPOSE 11434

# Run the entrypoint script
ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]
