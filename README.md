# slurm_debug

## Set up env
```
pip install lightning-bolts
```


## Usage:
```
sbatch ./debug_mini.sh /path/to/your/python/binary
```

## Issues:
- `debug_mini.sh` and `./debug_mini2.sh` tried two different ways to send signal to jobs before termination. The former one will ignore the signal and continue running until it's killed by slurm. The latter one will stop running without any error information when it's the time to receive the signal

- This script would take about 2 minutes to initialize DDP when it's scheduled on rtx2080ti with `sbatch`. But it can be done quickly with 3090 in sbatch or interactive session with rtx2080ti.


##NOTE:
You might need to set a higher time limit in the first run because the script need to download cifar to the current path
