from pl_bolts.models.autoencoders.basic_vae.basic_vae_module import cli_main

cli_main(['--strategy', 'ddp', '--gpus', '1', '--weights_save_path', './lightning_logs/debug_mini/'])
