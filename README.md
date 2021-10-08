# Overview
This repository contains dockerfiles, scripts and artifacts related to
AMD MIGraphX inference library.

## Getting Started:
1. Run to build a docker image including a copy of MIGraphX
```
scripts/build_migraphx_docker.sh
```

2. Next run the docker image ensuring the rocm-migraphx directory is mounted (to create and save artifacts).  
``` 
docker run --device='/dev/kfd' --device='/dev/dri' -v=`pwd`:code/rocm-migraphx -w /code/rocm-migraphx --group-add video -it  --network="host" rocm-migraphx:4.3n
cd scripts
./build_prereqs.sh

# Build the tools folder
cd ../tools
```

NOTE: Steps 1 - 2 only need to be done once.  After the original container is build and you want to get the latest MIGraphX code in to the container (perhaps as part of a regualar cadence run the following instead.  This will save you time and download bandwidth...
```
scripts/build_migraphx_docker_latest.sh
```

3. While still in the container 
```
./build_migraphx.sh
```

4. This is just for now, to remember to put ths somehwere
```
pip3 install tensorflow
```


4. Now run what you really wanted to do here
```
./run_check.sh
./run_perf.sh
```


## About this repo :

```
   scripts/
      build_migraphx_docker.sh - build MIGraphX docker container
         build_prereqs.sh - script that builds prereq components
         build_migraphx.sh - script that builds a checked out edition of MIGraphX
         run_check.sh - script to run unit tests
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
