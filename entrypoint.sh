#!/bin/bash

# Start Ollama server in background
ollama serve &

# Wait until server is available
echo "Waiting for Ollama to start..."
until curl -s http://localhost:11434 > /dev/null; do
  sleep 1
done

# Pull Mistral model
echo "Pulling Mistral model..."
ollama pull mistral

# Keep container running
tail -f /dev/null
