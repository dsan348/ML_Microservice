#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
#docker build --tag=localpredictionimg .  #I decided to use the more updated "build" command below.
docker build -t denisan348/predictionimg:UD_Proj5 .

# Step 2: 
# List docker images
docker images 

# Step 3: 
# Run flask app
docker run -p 8000:80 denisan348/predictionimg:UD_Proj5

