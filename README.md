# Offline Meta-Reinforcement Learning with Advantage Weighting (MACAW)

Fork of the MACAW repository. GitHub link - https://github.com/danielhavir/macaw

## Installing the environment

    # Install Python 3.7.9 if necessary
    $ pyenv install 3.7.9
    $ pyenv shell 3.7.9
    
    $ python --version
    Python 3.7.9
    
    $ python -m venv env
    $ source env/bin/activate
    $ pip install -r requirements.txt

## Downloading the data

The offline data used for MACAW can be found [here](https://drive.google.com/drive/folders/1kJEAYNWBYRD4ZIE3Ww0epXGM2VGelrQC?usp=sharing). Download it and use the default name (`macaw_offline_data`) for the folder where the four data directories are stored. [gDrive](https://github.com/prasmussen/gdrive) might be useful here if downloading from the Google Drive GUI is not an option.

## Running MACAW 🦜

Run offline meta-training with periodic online evaluations with any of the scripts in `scripts/`. e.g.

    $ ./scripts/macaw_ant.sh config/alg/overrides/suffix.json # Baseline
    $ ./scripts/macaw_ant.sh config/alg/overrides/sac_mc.json # SAC-like objective with MC returns
    $ ./scripts/macaw_ant.sh config/alg/overrides/stochastic.json # Stochastic policy
    $ ./scripts/macaw_ant.sh config/alg/overrides/q.json # Learned Q function
    $ ./scripts/macaw_ant.sh config/alg/overrides/twin.json # Twin network for value network
    ...
    
Outputs (tensorboard logs) will be written to the `log/` directory.

## Citation
If our code or research was useful for your own work, you can cite us with the following attribution:
    
    @InProceedings{mitchell2021offline,
        title = {Offline Meta-Reinforcement Learning with Advantage Weighting},
        author = {Mitchell, Eric and Rafailov, Rafael and Peng, Xue Bin and Levine, Sergey and Finn, Chelsea},
        booktitle = {Proceedings of the 38th International Conference on Machine Learning},
        year = {2021}
    }
