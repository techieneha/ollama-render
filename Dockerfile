FROM ollama/ollama:latest

# Pull mistral model during build to avoid latency during startup
RUN ollama pull mistral

# Expose the Ollama API port
EXPOSE 11434

# Start the Ollama server
CMD ["serve"]
