# Master Thesis
This repository contains the scripts used for data analysis in my Master thesis. Data and participant information is not included.


## Outline

Sight restored individuals with a history of either total dense congenital or developmental cataract provide a unique opportunity to investigate the influence of early visual experience on the development of the human brain. However, both groups of patients are difficult to classify after cataract removal; an objective marker for the retrospective classification of sight restored individuals is thus necessary. My Master thesis aimed to identify biomarkers in EEG activity for classification of sight restored individuals with a history of either total dense congenital cataract (CC individuals) or developmental cataract (DC individuals). To this end, biomarkers in task-related EEG activity were investigated, as well as markers in task-unrelated or resting state EEG activity, extending a previous study by my supervisor Dr. Suddha Sourav ([a link](suddha.sourav@uni-hamburg.de).

# Part 1: Biomarkers in visual event related potentials

CC individuals were reported to exhibit a lower amplitude in the P1 wave of visual event related potentials (VERPs), in a recent publication by Sourav, XXXX, 2020. To investigate whether CC individuals differed also in other waves in VERPs, participants were classified based on their VERP amplitudes at 500 timepoints after observing simple grating stimuli. At each timepoint, a Support Vector Machine was trained to classify one subsample of CC and DC individuals based on their VERP amplitudes at that timepoint, with a subsequent validation using a second subsample. The code for SVM Training is included in the file [a relative link](VERP_Training.Rmd), and Validation was performed using the Code in [a relative link](VERP_Validation.Rmd)


# Part 2: Biomarkers in event related oscillatory activity

Recent literature provides some evidence that CC and DC individuals might further differ in the power and phase of neural oscillations following stimulus observation (Bottari, 2015). Thus, the second part of my thesis aimed at identifying biomarkers to classify CC and DC individuals in data of event related oscillatory activity. To this end, the EEG data was wavelet transformed, yielding data of oscillatory power and phase over time, relative to stimulus onset. 




Literature:


