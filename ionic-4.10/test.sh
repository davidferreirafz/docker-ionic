#!/bin/bash
docker container run -it --rm -v `pwd`/my_disk:/opt/app  dukitan/ionic:4.10 /bin/sh
