docker run -e TZ=America/Chicago --gpus all --network=host -v /home/mev:/home/mev ort:tensorrt-20210201 env EXPROVIDER=tensorrt /home/mev/source/rocm-migraphx/scripts/run_ort_infer.sh
