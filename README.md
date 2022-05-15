# Master Thesis
This repository contains the scripts used for data analysis in my Master thesis. Due to privacy reasons, data and participant information is not included. The results will be published in an academic journal and are hence not reported here on GitHub. 


## Outline

Sight restored individuals with a history of either total dense congenital or developmental cataract provide a unique opportunity to investigate the influence of early visual experience on the development of the human brain. However, both groups of patients are difficult to classify after cataract removal; an objective marker for the retrospective classification of sight restored individuals is thus necessary. My Master thesis aimed to identify biomarkers in EEG activity for classification of sight restored individuals with a history of either total dense congenital cataract (CC individuals) or developmental cataract (DC individuals). To this end, biomarkers in task-related EEG activity were investigated, as well as markers in task-unrelated or resting state EEG activity, extending a previous study by my supervisor Dr. Suddha Sourav ([a link]).

# Part 1: Biomarkers in visual event related potentials

CC individuals were reported to exhibit a lower amplitude in the P1 wave of visual event related potentials (VERPs), in a recent publication by Sourav et al., 2020. To investigate whether CC individuals differed also in other waves in VERPs, participants were classified based on their VERP amplitudes at 500 timepoints after observing simple grating stimuli. At each timepoint, a Support Vector Machine was trained to classify one subsample of CC and DC individuals based on their VERP amplitudes at that timepoint, with a subsequent validation using a second subsample. Theís repository contains the code for [SVM training](/SVM/VERP_Training.Rmd) and [validation](/SVM/VERP_Training.Rmd).


# Part 2: Biomarkers in event related oscillatory activity

Recent literature provides some evidence that CC and DC individuals might further differ in the power and phase of neural oscillations following stimulus observation (Bottari, 2015). Thus, the second part of my thesis aimed at identifying biomarkers to classify CC and DC individuals in data of event related oscillatory activity. To this end, the EEG data was wavelet transformed, yielding the power and phase of neural oscillations over time, relative to stimulus onset. To reduce the dimensionality of the data, an elastic net regularized logistic regression model was used for feature selection, and subsequent classification based on the selected features was again performed using SVMs. The code for [Feature selection and training](/SVM/ElasticNet_Training.Rmd) and [validation](/SVM/ElasticNet_Validation.Rmd) can be found in this repository.




Literature:

Sourav
Bottari

