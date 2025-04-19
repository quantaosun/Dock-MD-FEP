#!/bin/bash

# Debugging info
nvidia-smi

# Install conda
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O Miniconda3-latest-Linux-x86_64.sh
bash ./Miniconda3-latest-Linux-x86_64.sh -b -p $HOME/miniconda3
export PATH="$HOME/miniconda3/bin:$PATH"

# Proper conda initialization
eval "$(conda shell.bash hook)"
conda init bash
source ~/.bashrc

# Create environment
conda env create -f environment.yml -n Dock-MD-FEP || exit 1
conda activate Dock-MD-FEP || { echo "Failed to activate environment"; exit 1; }

# Prepare input files
mkdir -p Dock-MD-FEP/input
cd Dock-MD-FEP/input || exit 1

# Verify input files exist
[ ! -f ../../ligand.mol2 ] && { echo "ligand.mol2 missing"; exit 1; }
[ ! -f ../../starting_end.pdb ] && { echo "starting_end.pdb missing"; exit 1; }

cp ../../ligand.mol2 ./ligand.tripos.mol2
cp ../../starting_end.pdb ./receptor.pdbfixer.pdb
cd ..

# Verify YAML file exists
[ ! -f ../implicit-1000_per_iteration_doubled_lambda.yaml ] && { echo "YAML config missing"; exit 1; }
cp ../implicit-1000_per_iteration_doubled_lambda.yaml .

# Install analysis packages BEFORE simulation
conda install -c conda-forge pyyaml=5.4 seaborn matplotlib-base jupyter_core -y

# Run simulation
yank script --yaml=implicit-1000_per_iteration_doubled_lambda.yaml || { echo "Simulation failed"; exit 1; }

# Package results
tar -cvf Dock-MD-FEP.tgz ABF-implicit-output
[ -d /root/paddlejob/workspace/output/ ] || mkdir -p /root/paddlejob/workspace/output/
mv Dock-MD-FEP.tgz /root/paddlejob/workspace/output/

# Analysis
cd ABF-implicit-output || exit 1
yank analyze --store=./experiments/

echo "Simulation completed successfully. Results available in output directory."