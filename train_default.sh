mkdir -p chk/shakespeare/

~/llama.cpp/train-text-from-scratch \
  --vocab-model ../models/ggml-vocab-llama.gguf \
  --model-out chk/shakespeare/ggml-shakespeare-256x16-f32-ITERATION.gguf \
  --embd 256 \
  --head 8 \
  --layer 16 \
  --train-data "data/shakespeare/shakespeare.txt" \
  --checkpoint-in  chk/shakespeare/chk-shakespeare-256x16-LATEST.gguf \
  --checkpoint-out chk/shakespeare/chk-shakespeare-256x16-ITERATION.gguf \
  --save-every 16 \
  --seed 1 \
  --ctx 64 \
  --threads 16 \
  --batch 16 \
  --no-checkpointing \
  --adam-iter 256
