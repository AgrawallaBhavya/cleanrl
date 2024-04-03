#!/bin/bash
#SBATCH -c 23
#SBATCH --gres=gpu:volta:1

python -u cleanrl/ppo_atari_envpool_new2.py --gae_lambda 0.8 --seed 5

python -u cleanrl/ppo_atari_envpool_new2.py --gae_lambda 0.6 --seed 1
python -u cleanrl/ppo_atari_envpool_new2.py --gae_lambda 0.6 --seed 2
python -u cleanrl/ppo_atari_envpool_new2.py --gae_lambda 0.6 --seed 3
python -u cleanrl/ppo_atari_envpool_new2.py --gae_lambda 0.6 --seed 4
python -u cleanrl/ppo_atari_envpool_new2.py --gae_lambda 0.6 --seed 5

python -u cleanrl/ppo_atari_envpool_new2.py --gae_lambda 0.4 --seed 1
python -u cleanrl/ppo_atari_envpool_new2.py --gae_lambda 0.4 --seed 2

python -u cleanrl/gae_atari_envpool_new2.py --seed 4
