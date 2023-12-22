# **Dock-MD-FEP**


################ PLEASE NOTE ################################################################

*The current workflow may be unable to deal with multiple chained PDB bank protein structures*

* This Colab version notebook currently is experiencing some instability due to some dependencies incompatible issue. This will be solved later, for now, you are advised to do this Dock-MD-FEP separately with three independent notebooks and

* The third stage is  [![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/quantaosun/Dock-MD-FEP/HEAD?labpath=Dock_MD_FEP.ipynb) (This is only a test to assure yourself that the FEP is good to go, to run the actual job please use a GPU platform).

* The second stage is a free MD (https://github.com/pablo-arantes/making-it-rain/blob/main/Protein_ligand.ipynb) or at least an MD input generation process that you can finish from here [![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/quantaosun/pl3_gmx_mmpbsa/HEAD) ,

* The very first stage you can finish from here [![badge](https://img.shields.io/badge/Labodock-Binder-E66581.svg?logo=data:image/png;base64,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)](https://mybinder.org/v2/zenodo/10.5281/zenodo.10208365/?labpath=wedock.ipynb)
############################################################################################



## Installing the workflow on a Linux computer

Using the code locally, you only need to do the installation once so that you can skip the installation cell afterwards.

RTX30 series or a better GPU is recommended for the local computer.

This workflow requires a dedicated Python 3.8 environment before installation.

```
conda create --name Dock-MD-FEP python=3.8
conda activate Dock-MD-FEP
conda install jupyter --yes
(Dock-MD-FEP) jupyter lab Dock-MD-FEP_local_installation.ipynb
```
Several little things should be modified compared to using this online, like the path name etc. Smina instead of Gnia is used because of possible GPU incompatibilities. The rest of the code remains the same. 

There might be an error from the first import cell, but it doesn't matter for the dock and MD simulation, it may only affect analysis later which you could do locally alternatively.

############################## Updated on 24/12/2022####################################


## To use the workflow online with Colab

```$Google_Drive_Path``` is the path in your Google Drive where you want to store the simulation data, and you should provide it.
![image](https://user-images.githubusercontent.com/75652473/208653399-3ee09d6c-f5be-4fff-b784-9d3a282ad65f.png)

## You can use this workflow purely for docking purposes, docking plus MD simulation, or docking, MD and absolute binding free energy calculation. 

<img width="751" alt="image" src="https://user-images.githubusercontent.com/75652473/191947254-e0a25965-99e5-449e-8b44-c7fbfd452760.png">

### After you've imported Google Drive, just fill in the four lines that define your working path, providing your PDB ID and small molecule structure, and the rest will run automatically with just one click. 

![image](https://user-images.githubusercontent.com/75652473/208780015-a2cb00f8-9ab3-40b6-9952-2edbfdade227.png)


---

## default parameters (Change simulation time to be longer is necessary for a proper simulation)

--
MD , all MD input use Amber Gaff2 force field to deal with small molecule.

### Up until before FEP simulation, the workflow procedes with one MD (MD0), one docking(dock1), MD(1), then the second docking (docking2), and a final MD(MD2), it will cost a total 25 ns of MD simulation.


```
MD 0 , equilibration 1 ns, production 2 ns. OpenMM as simulation engine.

MD0 result in $Google_Drive_Path (PDB bank structures MD result)

1st docking result in $Google_Drive_Path and $Google_Drive_Path/MD1

MD 1,  equilibration 2 ns, production 5.0 ns. OpenMM as simulation engine.

MD1 result in $Google_Drive_Path/MD1 (Docked small molecule MD result)

2nd docking result in $Google_Drive_Path/MD1 and $Google_Drive_Path/MD1/MD2

MD2, equilibration 5 ns, production 10 ns. OpenMM as simulation engine.

MD2 result in $Google_Drive_Path/MD1/MD2 (Docked small molecule MD result)


Dock, gnina, --exaustiveness=200. The best pose with docking score and best CNN score was carried on to FEP 

FEP, stop simulaiton when reaching error < 0.1 KT, Simulation engine OpenMM with Yank python library.
```

![image](https://user-images.githubusercontent.com/75652473/191434271-024479e8-caad-4c18-8aaa-cf62817dd1d2.png)

```Free energy of binding(benzene) : -11.229 +- 0.352 kT (-6.694 +- 0.210 kcal/mol)```

# Restart the simulation

Open the Dock-MD-FEP-restart.ipynb, after pasting the working directory path of last simulation. Import drive mannually, then run all the other cells at one time.

## Trouble shooting
A CUDA version related error ```CUDA_ERROR_UNSUPPORTED_PTX_VERSION (222)```
Please refer to https://github.com/quantaosun/Dock-MD-FEP/issues/2 or the openMM issue link https://github.com/openmm/openmm/issues/3585 
