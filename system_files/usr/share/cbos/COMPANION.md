# CBOS Companion

CBOS Companion is an optional local AI assistant. It is not started at boot and
does not send prompts, game-library data, or hardware information off-device.

The first supported configuration uses Ollama with `llama3.2:3b`. The model is
downloaded after an explicit choice during first-run setup, rather than being
embedded in the ISO. This keeps the installer compact and lets the user accept
the model's licence before downloading it.

The companion must release its loaded model when inactive or when a game is
launched. It must ask for confirmation before performing any system-changing
action.
