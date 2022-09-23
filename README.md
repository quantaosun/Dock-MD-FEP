# 


![image](https://user-images.githubusercontent.com/75652473/191434271-024479e8-caad-4c18-8aaa-cf62817dd1d2.png)

```Free energy of binding(benzene) : -11.229 +- 0.352 kT (-6.694 +- 0.210 kcal/mol)```


# **Dock-MD-FEP**

---
Docking, Molecular dynamic(MD), and Free energy perturbation (FEP) are important modelling methods in medicinal chemistry.

This Jupyter notebook shows how to run a Three-in-one simulation, i.e., docking, MD and FEP, with freely available GPU(and CPU) from Google Colab.

---

 **This notebook has NOT been thoroughly tested and validated. Use it at your own risk!** 

--- 

**This notebook is based on**
- The MD simulation is based on [OpenMM](https://openmm.org/) and [Making-it-rain](https://twitter.com/pablitoarantes)

- The FEP simulation is based on [Yank](http://getyank.org/latest/)

- The docking is based on Autodock Vina derived [Gnina](https://github.com/gnina/gnina)


- Other open-soured packages like [Open-Sourced-PyMOL](https://anaconda.org/conda-forge/pymol-open-source)/  [OpenBabel](https://github.com/openbabel/openbabel)/ [Rdkit](https://github.com/rdkit/rdkit) etc.

- Also, some github example/tutorial repositories,  [Yank example](https://github.com/choderalab/yank-examples) and [A customized yank script](https://github.com/quantaosun/OpenMM-Yank-YAML-template)

## default parameters

--
MD , all MD input use Amber Gaff2 force field to deal with small molecule.

MD 0 , equilibration 0.5 ns, production 1.0 ns. OpenMM as simulation engine.

MD 1,  equilibration 1.0 ns, production 2.0 ns. OpenMM as simulation engine.

Dock, gnina, --exaustiveness=200. The best pose with docking score and best CNN score was carried on to FEP 

FEP, stop simulaiton when reaching error < 0.1 KT, Simulation engine OpenMM with Yank python library.
