# 
```
#@title Flexible docking
!'/content/drive/MyDrive/ET2000/SRPK1/5a_5f_3_3a/5a/smina.static' --cpu 2 --seed 0 --autobox_ligand '{LigandFromProtein}' -r '{ProteinForDocking}' -l '{ConfoutputFilePath}' --flexdist_ligand '{LigandFromProtein}' --flexdist 5 -o '{Docked_out_FilePath}'
```

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

- The docking is based on Autodock Vina derived [Smina](https://github.com/mwojcikowski/smina)


- Other open-soured packages like [Open-Sourced-PyMOL](https://anaconda.org/conda-forge/pymol-open-source)/  [OpenBabel](https://github.com/openbabel/openbabel)/ [Rdkit](https://github.com/rdkit/rdkit) etc.

- Also, some github example/tutorial repositories,  [Yank example](https://github.com/choderalab/yank-examples) and [A customized yank script](https://github.com/quantaosun/OpenMM-Yank-YAML-template)

By default, MD is desingned for equilibration 0.5 ns, production 1.0 ns , and 1 ns and 2 ns for MD0 and MD1, respectively.
