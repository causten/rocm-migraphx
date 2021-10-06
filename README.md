# Overview
This repository contains dockerfiles, scripts and artifacts related to
AMD MIGraphX inference library.

## Getting Started:
1. Run to build a docker image including a copy of MIGraphX
> scripts/build_migraphx_docker.sh

2. Next run the docker image in a container with rocm-migraphx mounted (to create and save artifacts).
> docker run --device='/dev/kfd' --device='/dev/dri' -v=`pwd`:/code/rocm-migraphx -w /code/rocm-migraphx --group-add video -it rocm-migraphx:4.3n


## About this repo :

```
   scripts/
      build_migraphx_docker.sh - build MIGraphX docker container
         build_prereqs.sh - script that builds prereq components
         build_migraphx.sh - script that builds a checked out edition of MIGraphX
         build_check.sh - script to run unit tests
      build_migraphx_docker_latest.sh - create updated MIGraphX container with latest sources.
      run_perf.sh - run predefined performance tests
   dockerfile/   - dockerfiles, generally used by the scripts
   test-results/ - directory where results of run_perf.sh are placed
   saved-models/ - pointers and scripts to create saved ONNX and TF models
      torchvision - PyTorch torchvision suite -> ONNX
      cadene      - PyTorch repository of saved models -> ONNX
      pytorch-examples - PyTorch examples for RNNs -> ONNX
      onnxruntime - Repository of ONNX runtime saved models
      slim - Tensorflow Slim models
      onnx-model-zoo - ONNX model zoo
   tools/ - tools used to create/save/run models, etc.
```
