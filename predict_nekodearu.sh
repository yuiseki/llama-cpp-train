~/llama.cpp/main \
  -m chk/nekodearu/ggml-nekodearu-256x16-f32-LATEST.gguf \
  -p "吾輩は" \
  --escape \
  --n-predict 64 \
  --ctx-size 64 \
  --temp 0.0
