# README

## Launch Jupyter Notebook

```
python3 -m jupyter notebook --port 9000
```

## Using GPU (on Docker)

### Build

```
% docker build -t data-science .
% docker run --runtime=nvidia -p 9000:9000 -v "$(pwd):/notebooks/workspace" -it data-science
# Docker Container
% nohup pipenv run jupyter notebook --allow-root 2>&1 1>log.txt &
# go to localhost:9000 (`datascience` has set to default as login key)
```

## Trouble Shootings

### GPU Sync Failed

This error occures when you use some kernels.
Terminate kernel grabs GPU resource (or relaunch Jupyter Notebook as naive solution)