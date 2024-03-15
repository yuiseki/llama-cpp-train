mkdir -p chk/nekodearu/

~/llama.cpp/train-text-from-scratch \
  --vocab-model ../models/ggml-vocab-llama.gguf \
  --model-out chk/nekodearu/ggml-nekodearu-256x16-f32-ITERATION.gguf \
  --embd 256 \
  --head 8 \
  --layer 16 \
  --train-data "data/www.aozora.gr.jp/789_utf8_wagahaiwa_nekodearu.txt" \
  --checkpoint-in  chk/nekodearu/chk-nekodearu-256x16-LATEST.gguf \
  --checkpoint-out chk/nekodearu/chk-nekodearu-256x16-ITERATION.gguf \
  --save-every 16 \
  --seed 1 \
  --ctx 64 \
  --threads 8 \
  --batch 16 \
  --no-checkpointing \
  --adam-iter 256
