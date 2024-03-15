TARGETS = \
	chk/shakespeare/ggml-shakespeare-256x16-f32-ITERATION.gguf

all: $(TARGETS)

data/shakespeare/shakespeare.txt:
	wget \
		-O data/shakespeare/shakespeare.txt \
		https://raw.githubusercontent.com/brunoklein99/deep-learning-notes/master/shakespeare.txt

chk/shakespeare/ggml-shakespeare-256x16-f32-ITERATION.gguf: data/shakespeare/shakespeare.txt
	./train_default.sh
