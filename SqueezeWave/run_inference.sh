taskset --cpu-list 0 python3  inference.py -f <(ls mel_spectrograms/*.pt) -w SqueezeWave.pt -o .  -s 0.6
