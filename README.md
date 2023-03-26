# Master Thesis: Machine Learning Approaches to Develop EEG Biomarkers for Classifying Sight Restored Individuals

This repository contains the scripts used for data analysis in my Master Thesis "Machine Learning Apporaches to Develop EEG Biomarkers for Classifying Sight Restored Individuals" in Developmental Cognitive Neuroscience at the University of Hamburg (M.Sc. Psychology). Due to privacy reasons, original data and participant information is not included. The results will be published in an academic journal and are hence not reported here on GitHub. 


## Outline

Sight restored individuals with a history of either total dense congenital or developmental cataract provide a unique opportunity to investigate the influence of early visual experience on the development of the human brain. However, both groups of patients are difficult to classify after cataract removal; an objective marker for the retrospective classification of sight restored individuals is thus necessary. My Master thesis aimed to identify biomarkers in EEG activity for classification of sight restored individuals with a history of either total dense congenital cataract (CC individuals) or developmental cataract (DC individuals). To this end, biomarkers in task-related EEG activity were investigated, as well as markers in task-unrelated or resting state EEG activity, extending [a previous study](https://doi.org/10.1016/j.eclinm.2020.100559) by my supervisor Dr. Suddha Sourav and colleagues.


### Part 1: Biomarkers in visual event related potentials

CC individuals were reported to exhibit a lower amplitude in the P1 wave of visual event related potentials (VERPs; [Sourav et al., 2018](https://doi.org/10.1167/18.3.22)). To investigate whether CC individuals differed also in other waves in VERPs, participants were classified based on their VERP amplitudes at 500 timepoints after observing simple grating stimuli. At each timepoint, a Support Vector Machine was trained to classify one subsample of CC and DC individuals based on their VERP amplitudes at that timepoint, with a subsequent validation using a second subsample. Theís repository contains the code for [SVM training](/SVM/VERP_Training.Rmd) and [validation](/SVM/VERP_Validation.Rmd).


### Part 2: Biomarkers in event related oscillatory activity

Recent literature provides some evidence that CC and DC individuals might further differ in the power and phase of neural oscillations following stimulus observation ([Bottari, 2015](https://doi.org/10.1016/j.cortex.2015.07.029)). Thus, the second part of my thesis aimed at identifying biomarkers to classify CC and DC individuals in data of event related oscillatory activity. To this end, the EEG data was wavelet transformed, yielding the power change relative to a baseline interval and intertrial phase coherence of neural oscillations over frequencies and time, relative to stimulus onset. To reduce the dimensionality of the data, an elastic net regularized logistic regression model was used for feature selection, and subsequent classification based on the selected features was again performed using SVMs. The code for [feature selection and training](/SVM/ElasticNet_Training.Rmd) and [validation](/SVM/ElasticNet_Validation.Rmd) can be found in this repository.


### Part 3: Biomarkers in resting state activity

Biomarkers in resting state activity were investigated in a novel approach. Resting state EEG activity was again wavelet transformed, yielding the power and phase values of resting state oscillations over frequencies and time. Doing so, the power and phase of an individual's resting state activity could be represented as an image at every electrode. Due to this characteristic, Convolutional Neural Networks (CNNs) were tested for their ability to classify the resting state activity of CC and DC individuals, to infer on potential changes in task unrelated neural activity, possibly also in non-visual areas. Classification based on resting state activity was once [performed using data at all 32 electrodes](/CNN/32_channel_modeling.ipynb), i.e., classification of a 32-channel volume, and once [using only the data at the P8 electrode](/CNN/P8_channel_modeling.ipynb), i.e., a single image. A custom CNN was built and trained for this task, but also [transfer learning using the ResNet50](/CNN/ResNet_50_modeling.ipynb) was tested. To the best of my knowledge, the methodological approach explored on this analysis has not been applied to resting state activity to date, and bears large potential for subsequent research.




#### Literature:

[Bottari, D., Troje, N. F., Ley, P., Hense, M., Kekunnaya, R., & Röder, B. (2015). The neural
development of the biological motion processing system does not rely on early visual
input. Cortex, 71, 9.](https://doi.org/10.1016/j.cortex.2015.07.029)

[Sourav, S., Bottari, D., Kekunnaya, R., & Röder, B. (2018). Evidence of a retinotopic organization of early visual cortex but impaired extrastriate processing in sight recovery individuals. Journal of Vision, 18(3), 284–296.](https://doi.org/10.1167/18.3.22)

[Sourav, S., Bottari, D., Shareef, I., Kekunnaya, R., & Röder, B. (2020). An electrophysiological biomarker for the classification of cataract-reversal patients: A case-control study. EClinicalMedicine, 27, 100559.](https://doi.org/10.1016/j.eclinm.2020.100559)



