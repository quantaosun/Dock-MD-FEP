
# **Dock-MD-FEP**

<img width="850" alt="image" src="https://user-images.githubusercontent.com/75652473/208648592-c3cb8099-b80b-4b6a-b674-99f99c94a620.png">

## Based on your needs, you can use this workflow purely for docking purpose , docking plus MD simulation, or docking, MD and absolute binding free energy calculation. Just stop at the points that finishes your job, then download the results to local for furhter analysis. 

<img width="751" alt="image" src="https://user-images.githubusercontent.com/75652473/191947254-e0a25965-99e5-449e-8b44-c7fbfd452760.png">



---
Docking, Molecular dynamic(MD), and Free energy perturbation (FEP) are important modelling methods in medicinal chemistry.

This Jupyter notebook shows how to run a Three-in-one simulation, i.e., docking, MD and FEP, with freely available GPU(and CPU) from Google Colab.


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
```

Dock, gnina, --exaustiveness=200. The best pose with docking score and best CNN score was carried on to FEP 

FEP, stop simulaiton when reaching error < 0.1 KT, Simulation engine OpenMM with Yank python library.


![image](https://user-images.githubusercontent.com/75652473/191434271-024479e8-caad-4c18-8aaa-cf62817dd1d2.png)

```Free energy of binding(benzene) : -11.229 +- 0.352 kT (-6.694 +- 0.210 kcal/mol)```

# Restart the simulation

Open the Dock-MD-FEP-restart.ipynb, after pasting the working directory path of last simulation. Import drive mannually, then run all the other cells at one time.

## Trouble shooting
A CUDA version related error ```CUDA_ERROR_UNSUPPORTED_PTX_VERSION (222)```
Please refer to https://github.com/quantaosun/Dock-MD-FEP/issues/2 or the openMM issue link https://github.com/openmm/openmm/issues/3585 

