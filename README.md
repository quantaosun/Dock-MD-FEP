# **Dock-MD-FEP**

## Uploaded a procedure of solvation/hydration free energy of one small molecule

This could serve as an independent purpose of calculating solvation free energy or as part of a bigger calculation when doing binding FEP for this small molecule to a protein pocket.

################ PLEASE NOTE ################################################################

*The current workflow may be unable to deal with multiple chained PDB bank protein structures*
############################################################################################



## Installing the workflow on a Linux computer

By using the code locally, you only need to do the installation once, so you can skip the installation cell afterwards.

RTX30 series or a better GPU is recommended for the local computer.

This workflow requires a dedicated Python 3.8 environment before installation.

```
conda create --name Dock-MD-FEP python=3.8
conda activate Dock-MD-FEP
conda install jupyter --yes
(Dock-MD-FEP) jupyter lab Dock-MD-FEP_local_installation.ipynb
```
There are several little things that should be modified compared to using this online, like the path name etc. Smina instead of Gnia is used because of possible GPU incompatibilities. The rest of the code remains the same. 

There might be an error from the first import cell, but it doesn't matter for the dock and MD simulation, it may only affect analysis later which you could do locally alternatively.

############################## Updated on 24/12/2022####################################


## To use the workflow online with Colab

```$Google_Drive_Path``` is the path in your Google Drive where you want to store the simulation data, and it should be provided by you.
![image](https://user-images.githubusercontent.com/75652473/208653399-3ee09d6c-f5be-4fff-b784-9d3a282ad65f.png)

## You can use this workflow purely for docking purposes, docking plus MD simulation, or docking, MD and absolute binding free energy calculation. 

<img width="751" alt="image" src="https://user-images.githubusercontent.com/75652473/191947254-e0a25965-99e5-449e-8b44-c7fbfd452760.png">

### After you've imported Google Drive, just fill in the four lines that define your working path, providing your PDB ID and small molecule structure, and the rest will run automatically with just one click. 

![image](https://user-images.githubusercontent.com/75652473/208780015-a2cb00f8-9ab3-40b6-9952-2edbfdade227.png)


---

## default parameters (Change simulation time to be longer is necessary for a proper simulation)

--
MD, all MD input use Amber Gaff2 force field to deal with a small molecule.

### Up until before FEP simulation, the workflow proceeds with one MD (MD0), one docking(dock1), MD(1), then the second docking (docking2), and a final MD(MD2), it will cost a total 25 ns of MD simulation.


```
MD 0 , equilibration 1 ns, production 2 ns. OpenMM as a simulation engine.

MD0 result in $Google_Drive_Path (PDB bank structures MD result)

1st docking result in $Google_Drive_Path and $Google_Drive_Path/MD1

MD 1,  equilibration 2 ns, production 5.0 ns. OpenMM as a simulation engine.

MD1 result in $Google_Drive_Path/MD1 (Docked small molecule MD result)

2nd docking result in $Google_Drive_Path/MD1 and $Google_Drive_Path/MD1/MD2

MD2, equilibration 5 ns, production 10 ns. OpenMM as a simulation engine.

MD2 result in $Google_Drive_Path/MD1/MD2 (Docked small molecule MD result)


Dock, gnina, --exaustiveness=200. The best pose with docking score and best CNN score was carried on to FEP 

FEP, stop the simulation when reaching error < 0.1 KT, Simulation engine OpenMM with Yank python library.
```

![image](https://user-images.githubusercontent.com/75652473/191434271-024479e8-caad-4c18-8aaa-cf62817dd1d2.png)

```Free energy of binding(benzene) : -11.229 +- 0.352 kT (-6.694 +- 0.210 kcal/mol)```

# Restart the simulation

Open the Dock-MD-FEP-restart.ipynb, after pasting the working directory path of the last simulation. Import the drive manually, then run all the other cells at one time.

## Trouble shooting
A CUDA version related error ```CUDA_ERROR_UNSUPPORTED_PTX_VERSION (222)```
Please refer to https://github.com/quantaosun/Dock-MD-FEP/issues/2 or the openMM issue link https://github.com/openmm/openmm/issues/3585 
