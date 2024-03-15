TARGETS = \
	data/shakespeare/shakespeare.txt \
	data/www.aozora.gr.jp/789_utf8_wagahaiwa_nekodearu.txt \
	chk/shakespeare/ggml-shakespeare-256x16-f32-LATEST.gguf \
	chk/nekodearu/ggml-nekodearu-256x16-f32-LATEST.gguf

all: $(TARGETS)

clean:
	rm -rf chk/*

data/shakespeare/shakespeare.txt:
	mkdir -p data/shakespeare
	wget \
		-O data/shakespeare/shakespeare.txt \
		https://raw.githubusercontent.com/brunoklein99/deep-learning-notes/master/shakespeare.txt

chk/shakespeare/ggml-shakespeare-256x16-f32-LATEST.gguf: data/shakespeare/shakespeare.txt
	mkdir -p chk/shakespeare
	./train_default.sh

chk/shakespeare_i512/ggml-shakespeare-256x16-f32-LATEST.gguf: data/shakespeare/shakespeare.txt
	mkdir -p chk/shakespeare
	./train_iter_512.sh

tmp/www.aozora.gr.jp/789_ruby_utf8_wagahaiwa_nekodearu.txt:
	mkdir -p tmp/www.aozora.gr.jp
	wget \
		-O tmp/www.aozora.gr.jp/789_ruby_utf8_wagahaiwa_nekodearu.txt \
		https://github.com/levelevel/AozoraTxt/raw/master/person_utf8/000148/789_ruby_utf8_wagahaiwa_nekodearu.txt

data/www.aozora.gr.jp/789_utf8_wagahaiwa_nekodearu.txt: tmp/www.aozora.gr.jp/789_ruby_utf8_wagahaiwa_nekodearu.txt
	mkdir -p data/www.aozora.gr.jp
	cat tmp/www.aozora.gr.jp/789_ruby_utf8_wagahaiwa_nekodearu.txt | ./clean_aozora_ruby.sh > data/www.aozora.gr.jp/789_utf8_wagahaiwa_nekodearu.txt

chk/nekodearu/ggml-nekodearu-256x16-f32-LATEST.gguf: data/www.aozora.gr.jp/789_utf8_wagahaiwa_nekodearu.txt
	mkdir -p chk/nekodearu
	./train_nekodearu.sh
