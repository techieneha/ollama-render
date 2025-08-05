#!/bin/bash

# Start Ollama server in the background
ollama serve &

# Wait for the Ollama server to be up
echo "Waiting for Ollama server to start..."
until curl -s http://localhost:11434 > /dev/null; do
    sleep 2
done

# Pull the Mistral model once the server is running
ollama pull mistral

# Keep the container running
tail -f /dev/null
