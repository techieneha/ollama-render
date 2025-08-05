FROM ollama/ollama:latest

EXPOSE 11434

# Pull the mistral model during build time (optional but preferred for faster startup)
RUN ollama pull mistral || true

# Start the Ollama server and keep the container running
CMD ["ollama", "serve"]
