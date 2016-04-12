make
if [ ! -e text8 ]; then
  wget http://mattmahoney.net/dc/text8.zip -O text8.gz
  gzip -d text8.gz -f
fi
time ./word2vec -train ../triggerdata/per_alternate_names.TriggerWordList -output ai_hw4_vectors.bin
./distance ai_hw4_vectors.bin