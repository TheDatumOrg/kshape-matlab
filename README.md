# *k*-Shape: Efficient and Accurate Clustering of Time Series

*k*-Shape is a highly accurate and efficient unsupervised method for univariate and multivariate time-series clustering. *k*-Shape appeared at the ***ACM SIGMOD 2015*** conference, where it was selected as one of the (2) ***best papers*** and received the inaugural ***2015 ACM SIGMOD Research Highlight Award***. An extended version appeared in the ***ACM TODS 2017*** journal. Since then, *k*-Shape has achieved state-of-the-art performance in both ***univariate*** and ***multivariate*** time-series datasets (i.e., *k*-Shape is among the fastest and most accurate time-series clustering methods, ranked in the top positions of established benchmarks with 100+ different datasets). 

*k*-Shape has been widely adopted across different scientific areas (e.g., computer science, social science, space science, engineering, econometrics, biology, neuroscience, and medicine), Fortune 100-500 enterprises (e.g., Exelon, Nokia, and many financial firms), and organizations such as the European Space Agency.

If you use *k*-Shape in your project or research, cite the following two papers:

* [ACM SIGMOD 2015](https://www.paparrizos.org/papers/PaparrizosSIGMOD15.pdf)
* [ACM TODS 2017](https://www.paparrizos.org/papers/PaparrizosTODS17.pdf)

## References

> "k-Shape: Efficient and Accurate Clustering of Time Series"<br/>
> John Paparrizos and Luis Gravano<br/>
> 2015 ACM SIGMOD International Conference on Management of Data (**ACM SIGMOD 2015**)<br/>

```bibtex
@inproceedings{paparrizos2015k,
  title={{k-Shape: Efficient and Accurate Clustering of Time Series}},
  author={Paparrizos, John and Gravano, Luis},
  booktitle={Proceedings of the 2015 ACM SIGMOD international conference on management of data},
  pages={1855--1870},
  year={2015}
}
```

> "Fast and Accurate Time-Series Clustering"<br/>
> John Paparrizos and Luis Gravano<br/>
> ACM Transactions on Database Systems (**ACM TODS 2017**), volume 42(2), pages 1-49<br/>

```bibtex
@article{paparrizos2017fast,
  title={{Fast and Accurate Time-Series Clustering}},
  author={Paparrizos, John and Gravano, Luis},
  journal={ACM Transactions on Database Systems (ACM TODS)},
  volume={42},
  number={2},
  pages={1--49},
  year={2017}
}
```

## Acknowledgements

We thank [Teja Bogireddy](https://github.com/bogireddytejareddy) for his valuable help on this repository.

# *k*-Shape's Matlab Repository

This repository contains the Matlab implementation for *k*-Shape. For the Python version, check [here](https://github.com/thedatumorg/kshape-python).

## Data

To ease reproducibility, we share our results over two established benchmarks:

* The UCR Univariate Archive, which contains 128 univariate time-series datasets. 
  * Download all 128 preprocessed datasets [here](https://www.thedatum.org/datasets/UCR2022_DATASETS.zip).
* The UAE Multivariate Archive, which contains 28 multivariate time-series datasets. 
  * Download the first 14 preprocessed datasets [here](https://www.thedatum.org/datasets/UAE2022_DATASETS_1.zip).
  * Download the remaining 14 preprocessed datasets [here](https://www.thedatum.org/datasets/UAE2022_DATASETS_2.zip).

For the preprocessing steps check [here](https://github.com/thedatumorg/UCRArchiveFixes).


## Usage

### Univariate Example
```
$ matlab
> Datasets = [cellstr('Coffee')]
> DS = LoadUCRdataset(char(Datasets(i)))
> [labels centroids] = kShape_univariate(DS.Data, length(DS.ClassNames));
```
### Multivariate Example
```
$ matlab
> Datasets = [cellstr('ERing')]
> DS = LoadUAEdataset(char(Datasets(i)))
> [labels centroids] = kShape_multivariate(DS.Data, length(DS.ClassNames));
```

Check the [Univariate](https://github.com/thedatumorg/kshape-matlab/blob/main/DEMO_univariate.m) and [Multivariate](https://github.com/thedatumorg/kshape-matlab/blob/main/DEMO_multivariate.m) code examples for benchmarking on the UCR and UAE datasets, respectively.


## Results

The following tables contain the average Rand Index (RI), Adjusted Rand Index (ARI), and Normalized Mutual Information (NMI) accuracy values over 10 runs for *k*-Shape on the univariate and multivariate datasets.

Note: We collected the results using a single core implementation.

Server Specifications: Dual Intel(R) Xeon(R) Silver 4116 (24 cores/48 HT), 2.10 GHz, 196GB RAM.

### Results on the 128 univariate datasets:

| Datasets              | RI | ARI | NMI | Runtime (secs) |
|:-----------------------:|:------------:|:------------:|:------------:|:-----------:|
| ACSF1 | 0.720130 | 0.133853 | 0.38816 | 16.44156  |
| Adiac | 0.950243 | 0.245107 | 0.5885544 | 65.73705 |
| AllGestureWiimoteX | 0.8312724 | 0.097974 | 0.206865 | 44.08482 |
| AllGestureWiimoteY | 0.8322620 | 0.1298562 | 0.2612072 | 41.394241 |
| AllGestureWiimoteZ | 0.8305639 | 0.0805551 | 0.1834998| 36.600462|
| ArrowHead | 0.623006 | 0.17425450 | 0.2533444| 1.3054324 |
| BME | 0.623202 | 0.1905601 | 0.2877219 | 0.4999676 |
| Beef | 0.6586440 | 0.093608 | 0.27548189 | 0.8396471 |
| BeetleFly | 0.52217948 | 0.04438771 | 0.05563189 | 0.536824 |
| BirdChicken | 0.557179 | 0.1147453 | 0.1115865 | 0.3971603 |
| CBF | 0.8754116 | 0.7241217 | 0.76718 | 2.6086939 |
| Car | 0.662184 | 0.135845 | 0.2161395 | 2.8708315 |
| Chinatown | 0.5275538 | 0.043759 | 0.016924 | 0.3752007 |
| ChlorineConcentration | 0.5261843 | -0.0009891 | 0.0007648 | 45.2590362 |
| CinCECGTorso | 0.63144 | 0.0627054 | 0.105833 | 118.6877229 |
| Coffee | 0.7746103 | 0.549642 | 0.5130821 | 0.1543948 |
| Computers | 0.5296809 | 0.05959965 | 0.0573684 | 4.7628411 |
| CricketX | 0.86968 | 0.17770 | 0.358468 | 18.7591078 |
| CricketY | 0.8716223 | 0.202953 | 0.372466 | 20.3061207 |
| CricketZ | 0.8708478 | 0.181479 | 0.366086 | 23.5766044 |
| Crop | 0.922896 | 0.2378824 | 0.4379565 | 2016.38332 |
| DiatomSizeReduction | 0.919138 | 0.8000443 | 0.82079 | 2.0050213 |
| DistalPhalanxOutlineAgeGroup | 0.7089805 | 0.40880 | 0.3327341 | 1.8217814 |
| DistalPhalanxOutlineCorrect | 0.4994557 | -0.0010303 | 2.97467e-05 | 0.9867624 |
| DistalPhalanxTW | 0.861218 | 0.66677209 | 0.5412476 | 2.6783893 |
| DodgerLoopDay | 0.7667177 | 0.2080549 | 0.403120 | 1.537474 |
| DodgerLoopGame | 0.5592195 | 0.118973 | 0.1007804 | 0.4339152 |
| DodgerLoopWeekend | 0.883705 | 0.7639901 | 0.726488 | 0.4244024 |
| ECG200 | 0.615723 | 0.221028 | 0.1355204 | 0.3517059 |
| ECG5000 | 0.794273 | 0.5789588 | 0.551086 | 62.80226 |
| ECGFiveDays | 0.8450622 | 0.69024 | 0.65035860 | 1.9896606 |
| EOGHorizontalSignal | 0.8621825 | 0.22106 | 0.3988588 | 76.3076898 |
| EOGVerticalSignal | 0.8712630 | 0.1987407 | 0.3630311 | 136.628252 |
| Earthquakes | 0.515463 | 0.002441935 | 0.00365934 | 5.8951894 |
| ElectricDevices | 0.699713 | 0.08102712 | 0.1900975 | 798.8596981 |
| EthanolLevel | 0.622721 | 0.0032826 | 0.0076| 63.510865 |
| FaceAll | 0.914647 | 0.446507 | 0.621303 | 77.628496 |
| FaceFour | 0.756274 | 0.37390466 | 0.459848 | 0.666998 |
| FacesUCR | 0.905414 | 0.407250 | 0.602981 | 82.0091669 |
| FiftyWords | 0.951268 | 0.353808 | 0.646822 | 77.2777564 |
| Fish | 0.78469 | 0.1885622 | 0.31931 | 7.698090 |
| FordA | 0.5729417 | 0.14588 | 0.108051 | 392.9051991 |
| FordB | 0.512885 | 0.025769 | 0.0192114 | 338.176240 |
| FreezerRegularTrain | 0.638638 | 0.277277 | 0.211358 | 21.8496562 |
| FreezerSmallTrain | 0.63912 | 0.2782464 | 0.2121770 | 20.948636 |
| Fungi | 0.8383608 | 0.370585 | 0.7441787 | 2.4766722 |
| GestureMidAirD1 | 0.944996 | 0.2924181 | 0.630078 | 20.7455286 |
| GestureMidAirD2 | 0.945983 | 0.32512 | 0.668287 | 17.3725095 |
| GestureMidAirD3 | 0.93191 | 0.1287144 | 0.462995 | 20.0660984 |
| GesturePebbleZ1 | 0.882812| 0.58672 | 0.672185 | 5.3699548 |
| GesturePebbleZ2 | 0.865687 | 0.531216 | 0.627707 | 5.6506422 |
| GunPoint | 0.497487 | -0.005050 | 0.0 | 0.27812729 |
| GunPointAgeSpan | 0.532133 | 0.06442548 | 0.0534333 | 0.8154745 |
| GunPointMaleVersusFemale | 0.7919389 | 0.583864 | 0.574584 | 0.9656176 |
| GunPointOldVersusYoung | 0.518569 | 0.0371419 | 0.02792863 | 0.8558587 |
| Ham | 0.5251766 | 0.050364 | 0.0393745 | 1.4598628 |
| HandOutlines | 0.684268 | 0.36275| 0.2533 | 108.3821474 |
| Haptics | 0.683934 | 0.06481423 | 0.088467| 18.5722705 |
| Herring | 0.5018085 | 0.0038426 | 0.0079538 | 0.5510935 |
| HouseTwenty | 0.518445 | 0.036408 | 0.0294433 | 8.1808792 |
| InlineSkate | 0.7349455 | 0.035525 | 0.1013887 | 60.3541959 |
| InsectEPGRegularTrain | 0.7080033 | 0.3670333 | 0.3815031 | 6.3469509 |
| InsectEPGSmallTrain | 0.706829 | 0.3643330 | 0.381449 | 6.4372878 |
| InsectWingbeatSound | 0.817402 | 0.203979 | 0.417454 | 106.50463 |
| ItalyPowerDemand | 0.632077 | 0.2643881| 0.2290163 | 1.142456 |
| LargeKitchenAppliances | 0.5959861 | 0.1587658 | 0.158297 | 19.1498729 |
| Lightning2 | 0.531735 | 0.057807 | 0.091983 | 1.2679817 |
| Lightning7 | 0.809829 | 0.3245682 | 0.5033405 | 2.9859982 |
| Mallat | 0.9280703 | 0.7319002 | 0.880742 | 63.637825 |
| Meat | 0.81152 | 0.598769 | 0.6618977 | 0.769969 |
| MedicalImages | 0.6758102 | 0.0728651 | 0.2273344 | 21.5877388 |
| MelbournePedestrian | 0.870859 | 0.352634 | 0.475787 | 53.1154542 |
| MiddlePhalanxOutlineAgeGroup | 0.72316083 | 0.4075420 | 0.3944312 | 1.2056471 |
| MiddlePhalanxOutlineCorrect | 0.49977174 | -0.003736340 | 0.0008948 | 1.3280515 |
| MiddlePhalanxTW | 0.824102 | 0.516091 | 0.4439475 | 4.2374399 |
| MixedShapesRegularTrain | 0.813364 | 0.454867 | 0.517074 | 281.8805552 |
| MixedShapesSmallTrain | 0.8043481 | 0.42862725 | 0.4831717 | 132.92262 |
| MoteStrain | 0.803214 | 0.606398 | 0.4989154 | 1.9564175 |
| NonInvasiveFetalECGThorax1 | 0.950663 | 0.3284714 | 0.673888 | 983.400489 |
| NonInvasiveFetalECGThorax2 | 0.966616 | 0.460978 | 0.7620196 | 914.974343 |
| OSULeaf | 0.7845599 | 0.26266825 | 0.36322052 | 5.6948894 |
| OliveOil | 0.84537 | 0.641611 | 0.6482696 | 0.9241004 |
| PLAID | 0.8575927 | 0.2757823 | 0.400212 | 139.861927 |
| PhalangesOutlinesCorrect | 0.50535451 | 0.01068759 | 0.0102117 | 3.467281 |
| Phoneme | 0.9278681 | 0.034855 | 0.21230 | 284.5056299 |
| PickupGestureWiimoteZ | 0.856000 | 0.273205 | 0.520960 | 0.959337 |
| PigAirwayPressure | 0.912801 | 0.02888090 | 0.4359559 | 108.75665 |
| PigArtPressure | 0.957855 | 0.25324 | 0.7065518 | 85.6010015 |
| PigCVP | 0.960429 | 0.185662 | 0.65441 | 95.0936539 |
| Plane | 0.9271633 | 0.73900812 | 0.85989 | 0.5993027 |
| PowerCons | 0.603472 | 0.2073108 | 0.192511 | 1.0429059 |
| ProximalPhalanxOutlineAgeGroup | 0.770749274 | 0.513001 | 0.476826 | 1.5074031 |
| ProximalPhalanxOutlineCorrect | 0.534142 | 0.0669039 | 0.0861243 | 0.5041136 |
| ProximalPhalanxTW | 0.8290153 | 0.5644440 | 0.5501682 | 2.0008952 |
| RefrigerationDevices | 0.557799 | 0.00591210 | 0.007814 | 14.5373435 |
| Rock | 0.703975 | 0.2364493 | 0.34588788 | 14.234106 |
| ScreenType | 0.559913 | 0.01123146 | 0.0121790 | 19.1829763 |
| SemgHandGenderCh2 | 0.5466622 | 0.092221 | 0.058817 | 12.8683178 |
| SemgHandMovementCh2 | 0.7444837 | 0.1319358 | 0.2250277 | 62.862215 |
| SemgHandSubjectCh2 | 0.7296606 | 0.2050891 | 0.2754994 | 49.4141228 |
| ShakeGestureWiimoteZ | 0.901898 | 0.462442 | 0.6747047 | 1.5737051 |
| ShapeletSim | 0.7377881 | 0.4757332 | 0.447908 | 0.9869574 |
| ShapesAll | 0.9780872 | 0.4180266 | 0.740378 | 166.1683117 |
| SmallKitchenAppliances | 0.3737210 | 0.0012730 | 0.0217231 | 4.4734788 |
| SmoothSubspace | 0.627010 | 0.164396 | 0.179225 | 2.1865543 |
| SonyAIBORobotSurface1 | 0.675473 | 0.3505679 | 0.35182660 | 1.6894352 |
| SonyAIBORobotSurface2 | 0.6000775 | 0.1939438 | 0.1365685 | 2.9754101 |
| StarLightCurves | 0.766313 | 0.5122511 | 0.6024638 | 964.46397 |
| Strawberry | 0.504165 | -0.019398 | 0.12339 | 4.6568317 |
| SwedishLeaf | 0.8957285 | 0.32160817 | 0.5586813 | 24.8132561 |
| Symbols | 0.889196 | 0.6500050 | 0.7775430 | 11.0962628 |
| SyntheticControl | 0.88920255 | 0.613962 | 0.710865 | 2.6594387 |
| ToeSegmentation1 | 0.5020124 | 0.00407319 | 0.0050804 | 1.2348743 |
| ToeSegmentation2 | 0.635188 | 0.26236656 | 0.210026 | 0.8832202 |
| Trace | 0.6985025 | 0.4320041 | 0.58108 | 0.748028 |
| TwoLeadECG | 0.5448122 | 0.0896479 | 0.06946036 | 4.2016234 |
| TwoPatterns | 0.687406 | 0.2354546 | 0.3377804 | 67.9150568 |
| UMD | 0.601005 | 0.12067420 | 0.1685033 | 0.6761436 |
| UWaveGestureLibraryAll | 0.91405589 | 0.6146967 | 0.682234 | 306.4056649 |
| UWaveGestureLibraryX | 0.856831 | 0.364044 | 0.4629476 | 164.2872381 |
| UWaveGestureLibraryY | 0.829982 | 0.2456431 | 0.34295234 | 302.7145652 |
| UWaveGestureLibraryZ | 0.8466015 | 0.34710914 | 0.456047 | 186.73311 |
| Wafer | 0.538320 | 0.0138277 | 0.00342959 | 32.045277 |
| Wine | 0.4964785 | -0.0051879 | 0.0010564 | 0.5772297 |
| WordSynonyms | 0.8955053 | 0.226308983 | 0.4521644651 | 45.8095883 |
| Worms | 0.6517901 | 0.0400797 | 0.064035 | 5.9496994 |
| WormsTwoClass | 0.502826 | 0.0054806 | 0.0083700 | 2.8476746 |
| Yoga | 0.4999203 | -0.00026 | 0.00015200 | 151.1891111 |


### Results on the 28 multivariate datasets:

| Datasets              | RI | ARI | NMI | Runtime (secs) |
|:-----------------------:|:------------:|:------------:|:------------:|:-----------:|
| ArticularyWordRecognition | 0.77671625 | 0.07149355 | 0.3011789 | 1546.01149 |
| AtrialFibrillation | 0.5687356 | 0.011988 | 0.0802680 | 35.360911 |
| BasicMotions | 0.8301898 | 0.5432472 | 0.598455 | 30.48984 |
| CharacterTrajectories | 0.6844712 | 0.1070294 | 0.322181 | 2456.18020 |
| Cricket | 0.8356548 | 0.276009 | 0.5089841 | 1429.36256 |
| DuckDuckGeese | 0.632848 | 0.01925416 | 0.0776541 | 8474.327226 |
| ERing | 0.81792419 | 0.36732625 | 0.455813686 | 163.9078219 |
| Epilepsy | 0.7984578 | 0.4743980 | 0.51779585 | 268.4851809 |
| EthanolConcentration | 0.5652897 | -0.00074536 | 0.003556034 | 611.921332 |
| FaceDetection | 0.5000501 | 0.00010108 | 0.00015046 | 169734.49986 |
| FingerMovements | 0.4999246 | 0.00077181 | 0.00301908 | 146.7177615 |
| HandMovementDirection | 0.564685 | 0.0005354 | 0.015490 | 653.58844 |
| Handwriting | 0.9088080 | 0.0331515 | 0.204900 | 1473.25828 |
| Heartbeat | 0.5034637 | -0.001199 | 0.00083743 | 2197.214505 |
| InsectWingbeat | 0.75276 | 0.00145 | 0.00373 | 868301.6473
| JapaneseVowels | 0.77892996 | 0.0648988 | 0.143400 | 386.25808 |
| LSST | 0.78172231 | 0.05318 | 0.099389 | 2098.3571827 |
| Libras | 0.869726095 | 0.172633 | 0.419726 | 405.35505 |
| MotorImagery | 0.5006273 | 0.0014968 | 0.00320020 | 10928.88054 |
| NATOPS | 0.735945 | 0.0859692 | 0.14600909 | 514.7707 |
| PenDigits | 0.7892067 | 0.163134 | 0.291098 | 1503.162750 |
| PhonemeSpectra | 0.9443979 | 0.0189895 | 0.119970 | 13252.5714916 |
| RacketSports | 0.607855 | 0.0429515 | 0.0708733 | 107.0638691 |
| SelfRegulationSCP1 | 0.542662 | 0.0854783 | 0.072874 | 1256.628221 |
| SelfRegulationSCP2 | 0.499026 | -0.00194560 | 0.000499 | 1021.38219 |
| SpokenArabicDigits | 0.844546 | 0.2130830 | 0.332006 | 6801.11004 |
| StandWalkJump | 0.58490 | 0.11269 | 0.185295 | 623.50776 |
| UWaveGestureLibrary | 0.77915 | 0.1928167 | 0.3521283 | 785.27181 |


