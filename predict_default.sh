~/llama.cpp/main \
  -m chk/shakespeare/ggml-shakespeare-256x16-f32-LATEST.gguf \
  -p "When I do count the clock that tells the time,\n" \
  --escape \
  --n-predict 64 \
  --temp 0.0
