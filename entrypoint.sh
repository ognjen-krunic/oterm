#!/bin/bash

until curl -s $OLLAMA_URL/api/tags >/dev/null; do
  echo "⏳ Čekam Ollama da postane dostupan na $OLLAMA_URL..."
  sleep 2
done

echo "✅ Ollama je dostupan. Pokrećem oterm..."

exec oterm