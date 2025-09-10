#!/bin/bash

# Define the base directory for the home feature
FEATURE_NAME="medicines"
BASE_DIR="lib/features/$FEATURE_NAME"

# Create necessary directories
mkdir -p $BASE_DIR/ui/
mkdir -p $BASE_DIR/ui/widgets
mkdir -p $BASE_DIR/logic
mkdir -p $BASE_DIR/data/models
mkdir -p $BASE_DIR/data/repos

# Create necessary Dart files
touch $BASE_DIR/ui/${FEATURE_NAME}_screen.dart

echo "${FEATURE_NAME} feature structure created successfully!"
# Run the following command after saving the script:
# ./create_new_feature.sh
