#!/bin/bash

echo "promoting the new version ${VERSION} to downstream repositories"

jx step create pr regex --regex "(?m)^FROM 702769831180.dkr.ecr.ap-south-1.amazonaws.com/702769831180/jxl-base:(?P<version>.*)$" --version ${VERSION} --files Dockerfile --repo https://github.com/rajattyagipvr/jxl.git
