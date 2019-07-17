#!/bin/sh
mc config host add s3 https://s3.amazonaws.com $KEY $SECRET
mc cp --recursive /app/public/ s3/get.paskal-dev.com