# fastspeech_squeezewave
Integration of Fastspeech Text to Mel generation and fast Vocoder Squeezewave ( CPU only).
This is one of the fastest TTS solution.

@@ Can someone try on RPI (3 or 4 ) and update me timing information

Code from 

https://github.com/xcmyz/FastSpeech

https://github.com/tianrengao/SqueezeWave


Put Model in Squeezewave from 

https://drive.google.com/file/d/1RyVMLY2l8JJGq_dCEAAd8rIRIn_k13UB/view?usp=sharing 

and rename it Squeezewave.pt ( select based on quality and size tradeoff)

```
-rwxrwxrwx 1 root root 312M Jan 17 05:02 L128_large_pretrain
-rwxrwxrwx 1 root root  97M Jan 17 05:02 L128_small_pretrain
-rwxrwxrwx 1 root root 324M Jan 17 05:01 L64_large_pretrain
-rwxrwxrwx 1 root root 106M Jan 17 05:03 L64_small_pretrain
```
# Running Infernce
1. cd FastSpeech ; run_inference.sh

2. cd SqueezeWave ; run_inference.sh

This generate wave file.

# Example Run(Single CORE CPU) 

( Time calculation except loading time of model)

Text -->" Printing, in the only sense with which we are at present concerned, differs from most if not from all the arts and crafts represented in the Exhibition in being comparatively modern"

Audio Duratio generated 11.5 Sec in arodun 3.83 seconds

```
07:40:00alok@/mount/data/fastspeech_squeezewave/FastSpeech$ bash run_inference.sh 
MEL Calculation:
2.827802896499634

07:40:37alok@/mount/data/fastspeech_squeezewave/SqueezeWave$ bash run_inference.sh 
./test_synthesis.wav 
Squeezewave vocoder time
1.0016820430755615
```


