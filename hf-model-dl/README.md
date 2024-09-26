# AI model downloader using huggingface client
A side-container for downloading Huggingface models to the main-container using the huggingface-cli

## Example
huggingface-cli download facebook/bart-large-cnn pytorch_model.bin tokenizer.json vocab.json config.json merges.txt --local-dir . --local-dir-use-symlinks False

using the script:
./dl.sh -m facebook/bart-large-cnn -d fb-bart-large-cnn -f "pytorch_model.bin tokenizer.json vocab.json config.json merges.txt"
