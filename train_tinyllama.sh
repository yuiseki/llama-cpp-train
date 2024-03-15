mkdir -p chk/tinyllama/

~/llama.cpp/train-text-from-scratch \
  --vocab-model ../models/ggml-vocab-llama.gguf \
  --model-out chk/tinyllama/ggml-shakespeare-tinyllama-f32-ITERATION.gguf \
  --embd 2048 \
  --head 32 \
  --layer 22 \
  --train-data "data/shakespeare/shakespeare.txt" \
  --checkpoint-in  chk/tinyllama/chk-shakespeare-tinyllama-LATEST.gguf \
  --checkpoint-out chk/tinyllama/chk-shakespeare-tinyllama-ITERATION.gguf \
  --save-every 16 \
  --seed 1 \
  --ctx 2048 \
  --threads 8 \
  --batch 16 \
  --no-checkpointing \
  --adam-iter 256
