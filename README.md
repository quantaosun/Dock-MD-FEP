# 
![image](https://user-images.githubusercontent.com/75652473/190936040-be6681a0-a792-4acf-9436-aea5a8652ca2.png)
```Free energy of binding(benzene) : -11.229 +- 0.352 kT (-6.694 +- 0.210 kcal/mol)```


# A three-in-one workflow for docking, molecular dynamic and free energy pertubation.

*Workflow summary, time cost will significantly depend the size of yor protein, and the GPU you used, here is just a very rough estimation*

Install dependencies, ~ 15 min

1.   Stage 1 docking, Smina standard mode, ~ 5 min.
2.   Stage 2 Molecular dynamic for TOP 1 docked pose, ~ 90min.
3.   Stage 3 Self-redock, Smina, flexible receptor mode, predicted binding mode generated. ~ 60 min.
4.   Stage 4 Molecular dynamic, for new TOP1 pose, and score with MMGBSA(PBSA), ~ 120 min.

Total time required estimated, ~ 5 hour.

5. Stage 5 Free energy pertubation, for binding free energy, ~ 24 hours

## Why would you bother using this workflow, given there are so many docking software or even you already got a licensed one?

The short answer is all the docking out there are not reliable (to the degree I am happy) even paid license version.

The main benefit of this workflow is to address the flexibility of the protein binding pocket, which is impossible to be fully addressed in even commercial licensed IFD software like Schrodinger's IFD, which only address a few side chains. But this workflow will consider both main chain and side chains, all of them.

To fully address this issue most of current docking softwares have failed, this workflow integreated molecular dynamic to fullly refine the protein-ligand complex after and before docking.

And this workflow provide you a MMPBSA calculated from MD frames, which is not provided in normal docking algorithums. What's more, a FEP based absolute binding free energy by Yank is provided as well, to further address the score issue faced by docking.

Last but not least, this workflow is highly automatic, if you pre-define your protein targets, which might cost sometime at first time, but after that, you can easily just input two simple SMILES string from you chemdraw, and that's all, just click one button, and the predicted binding affinity will be generated hours later.

## References


This notebook would like to thank https://github.com/pablo-arant
es for developing an excellent and open source suite of molecular dynamic.

This notebook would like to thank https://github.com/mwojcikowski for developing an excellent and open source suite of molecular docking.

This notebook would like to thank Yank (http://getyank.org/latest/) for developing an excellent and open source suite of free energy simulation.


As well as several Github repositories

Yank-example (https://github.com/choderalab/yank-examples)

A customised yank script (https://github.com/quantaosun/OpenMM-Yank-YAML-template)

All of these are open-sourced, you can always use them as long as you cite properly.


