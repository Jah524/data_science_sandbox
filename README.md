# README

``` verify GPU
pipenv run python -c "import tensorflow as tf; tf.enable_eager_execution(); print(tf.reduce_sum(tf.random_normal([1000, 1000])))"
```

```
docker build -t nyaos .
```

```
# serverの場合、9000しかポートフォワードしてない点に注意
% docker run --runtime=nvidia -p 9000:9000 nyaos
```