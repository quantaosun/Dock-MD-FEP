### This is an effort to utilise the free GPU provided by Baidu AI Studio.

This piece of bash code was written from scratch without any third-party repository, unlike the ipynb version of this workflow. (which is the proper way to do it)

This is an all-in-one piece of code, so it is critical to think about the timing control to make sure the latter steps should only be excuted if the previous ones has finished correctly.


It is supposed to run `bash run.sh` command on AI Studio, after having uploaded the two input files (`ligand.mol2` and `starting_end.pdb`)

<img width="1353" alt="image" src="https://github.com/user-attachments/assets/44e85a9d-f16f-44c6-8b35-da5c26c06b03" />

After the simulation is done, you can download the output files and do some furhter analysis.

<img width="1404" alt="image" src="https://github.com/user-attachments/assets/68abb69c-a09b-4cbb-aac7-3e809d6fce18" />
