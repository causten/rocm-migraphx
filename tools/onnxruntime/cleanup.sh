#!/bin/bash
set -x
rm -rf onnxruntime.save
mv onnxruntime onnxruntime.save
git clone --recursive https://github.com/microsoft/onnxruntime
