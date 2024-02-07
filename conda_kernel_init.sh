#!/bin/bash
#goes to base conda enviroment
if [ -z "$1" ]; then
    echo "Error: Please provide a name for the Conda environment."
    echo "Usage: $0 <environment_name>"
    exit 1
fi
#conda deactivate
# Set environment name and libraries
ENV_NAME=$1
LIBRARIES="numpy pandas matplotlib pip jupyterlab"

conda init bash
# Create a new Conda environment
echo "Creating Conda environment: $ENV_NAME"
conda create -n $ENV_NAME $LIBRARIES

# Activate the Conda environment
echo "Activating Conda environment: $ENV_NAME"
conda activate $ENV_NAME

# Run series of commands in the Conda environment
echo "Running commands in the Conda environment..."

# Example commands (replace with your own commands)
echo "Conda environment details:"
pip install ipykernel
python -m ipykernel install --user --name $1 --display-name "$1"


# Deactivate the Conda environment when done
#conda deactivate

echo "Script completed successfully!"
