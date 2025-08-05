#!/bin/bash

# Start the Ollama server in the background
ollama serve &

# Wait for the server to start accepting connections
echo "Waiting for Ollama server..."
until curl -s http://localhost:11434 > /dev/null; do
    sleep 2
done

# Pull the mistral model
ollama pull mistral

# Keep the container running
tail -f /dev/null
