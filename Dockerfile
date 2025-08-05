FROM ollama/ollama:latest

# Copy your entrypoint script into the container
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Expose Ollama API port
EXPOSE 11434

# Override the default entrypoint
ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]
