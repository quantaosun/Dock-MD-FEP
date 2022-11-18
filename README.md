
# **Dock-MD-FEP**

This notebook only requires four strings, then all the rest is handled by the code itself. 

## Note the FEP here is refer to Absolute binding free energy of ONE small molecule to a protein target, not the relative free energy of TWO.

<img width="751" alt="image" src="https://user-images.githubusercontent.com/75652473/191947254-e0a25965-99e5-449e-8b44-c7fbfd452760.png">



---
Docking, Molecular dynamic(MD), and Free energy perturbation (FEP) are important modelling methods in medicinal chemistry.

This Jupyter notebook shows how to run a Three-in-one simulation, i.e., docking, MD and FEP, with freely available GPU(and CPU) from Google Colab.


## default parameters

--
MD , all MD input use Amber Gaff2 force field to deal with small molecule.

MD 0 , equilibration 0.5 ns, production 1.0 ns. OpenMM as simulation engine.

MD 1,  equilibration 1.0 ns, production 2.0 ns. OpenMM as simulation engine.

Dock, gnina, --exaustiveness=200. The best pose with docking score and best CNN score was carried on to FEP 

FEP, stop simulaiton when reaching error < 0.1 KT, Simulation engine OpenMM with Yank python library.


![image](https://user-images.githubusercontent.com/75652473/191434271-024479e8-caad-4c18-8aaa-cf62817dd1d2.png)

```Free energy of binding(benzene) : -11.229 +- 0.352 kT (-6.694 +- 0.210 kcal/mol)```

# Restart the simulation

Open the Dock-MD-FEP-restart.ipynb, after pasting the working directory path of last simulation. Import drive mannually, then run all the other cells at one time.

## Trouble shooting
A CUDA version related error ```CUDA_ERROR_UNSUPPORTED_PTX_VERSION (222)```
Please refer to https://github.com/quantaosun/Dock-MD-FEP/issues/2 or the openMM issue link https://github.com/openmm/openmm/issues/3585 

