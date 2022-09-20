# 
![image](https://user-images.githubusercontent.com/75652473/190936040-be6681a0-a792-4acf-9436-aea5a8652ca2.png)
```Free energy of binding(benzene) : -11.229 +- 0.352 kT (-6.694 +- 0.210 kcal/mol)```


# A three-in-one workflow for docking, molecular dynamic and free energy pertubation.

*Workflow summary, time cost will significantly depend the size of yor protein, and the GPU you used, here is just a very rough estimation*

Install dependencies, ~ 15 min

1.   Stage 1 docking, Smina standard mode, ~ 5 min.
2.   Stage 2 Molecular dynamic for TOP 1 docked pose, ~ 90min.
3.   Stage 3 Free energy pertubation, for binding free energy, ~ 24 hours



## References


This notebook would like to thank https://github.com/pablo-arant
es for developing an excellent and open source suite of molecular dynamic.

This notebook would like to thank https://github.com/mwojcikowski for developing an excellent and open source suite of molecular docking.

This notebook would like to thank Yank (http://getyank.org/latest/) for developing an excellent and open source suite of free energy simulation.


As well as several Github repositories

Yank-example (https://github.com/choderalab/yank-examples)

A customised yank script (https://github.com/quantaosun/OpenMM-Yank-YAML-template)

All of these are open-sourced, you can always use them as long as you cite properly.

All of these are open-sourced, you can always use them as long as you cite properly.

