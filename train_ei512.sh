mkdir -p chk/shakespeare_ei512/

~/llama.cpp/train-text-from-scratch \
  --vocab-model ~/llama.cpp/models/ggml-vocab-llama.gguf \
  --model-out chk/shakespeare_ei512/ggml-shakespeare-256x16-f32-ITERATION.gguf \
  --embd 512 \
  --head 8 \
  --layer 16 \
  --train-data "data/shakespeare/shakespeare.txt" \
  --checkpoint-in  chk/shakespeare_ei512/chk-shakespeare-256x16-LATEST.gguf \
  --checkpoint-out chk/shakespeare_ei512/chk-shakespeare-256x16-ITERATION.gguf \
  --save-every 16 \
  --seed 1 \
  --ctx 64 \
  --threads 8 \
  --batch 16 \
  --no-checkpointing \
  --adam-iter 512
