#!/bin/bash

docker container run -it --rm -v `pwd`/my_disk:/opt/app dukitan/ionic:3.20 /bin/sh
