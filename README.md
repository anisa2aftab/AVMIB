
# AVMIB: An open-source desktop application for MIBCI EEG data analysis and visualization

## Description: 

Brain Computer Interface (BCI) provides means for alternative nonmuscular communication for disabled people. EEG signals are generally used to measure the brain activity due to its non-invasiveness, portability, relatively inexpensive and high temporal resolution.There are several approaches to generate electrical brain signals. One of such approaches is event related desynchronization\synchronization (ERD\ERS), which detects the brain oscillatory, and does not required external stimulation. Motor imagery BCI (MIBCI) comes under this category, in which users imagine movements occurring in their limbs (e.g., hands, tongue, arms, and feet etc.) in order to control the system. Based on the movement imagination, associated brain region exhibits suppression (ERD) or enhancement (ERS) in the EEG signal amplitude. The ERD/ERS phenomena is observed in the sensory motor cortex area of brain which is responsible for control, and execution of voluntary movements and MI signal lies in the μ(8–13 Hz) or β(13–20 Hz) bands.

BCI is a system which operates on successful interface between hardware and software components. Software is an essential component of BCIs. With the motivation of making the task of visualization and understanding of BCI data analysis easy for the novice researchers, I have developed an open-source cross-platform and standalone desktop application, called AVMIB. The software architecture is based on the well-known spatial feature extraction algorithm Common Spatial Pattern (CSP) and regularized CSP (RCSP). AVMIB presents data visualization and analysis of 11 RCSP algorithms including classical CSP on total of 17 subjects’ MI data from 3 standard BCI competition datasets. Additionally, AVMIB enables subject performance analysis using machine learning, based on several key metrics.

## Datasets used:
### 1. Dataset: BCI_III_DS_IVa

No. of subjects = `5`

MI Tasks : `right hand & foot`

No. of electrodes: `118`

|Subjects| Training Trials| Testing Trials| Total Trials|
|:-------|:--------------:|:--------:|:-----------:|
|A1| 168| 112| 280 | 
|A2| 224| 56| 280|
|A3| 84| 196| 280|
|A4| 56| 224| 280
|A5| 28|252| 280|

https://www.bbci.de/competition/iii/


### 2. Dataset: BCI_III_DS_IIIa

No. of subjects = `3`

MI Tasks : `right and left hand`

No. of electrodes: `60`

|Subjects| Training Trials| Testing Trials| Total Trials|
|:-------|:--------------:|:--------:|:-----------:|
|B1| 45| 45| 90 | 
|B2| 30| 30| 60|
|B3| 30| 30| 60|

https://www.bbci.de/competition/iii/

### 3. Dataset: BCI_IV_DS_IIa
No. of subjects = `9`

MI Tasks : `right and left hand`

No. of electrodes: `22`

Training Trials per subject: `144`

Testing Trials per subject: `144`

Total Trials: `288`

https://www.bbci.de/competition/iv/




## Features

- Easy-to-use analysis and visualization tool
- Helps to ge insight into motor imagery BCI data
- Open source
- Modular design
- Cross platform
- Standalone application
- No programming expertise is required to run
- Though it is designed in MATLAB, but no need of installing MATLAB to run



## Screenshots

AVMIB interface represents each feature by individual pushbutton, hence, to access each functionality, pushbutton is the gateway as shown in Figures below. The first section is associated with the filtering and plotting of EEG signal before and after filtering. The second section is concerned with the subject wise accuracy assessment upon choosing a specific dataset and algorithm. The third section is related to the evaluation of performance metrics such as, Sensitivity, Specificity, Precision and Recall of each subject. The fourth section is about topographical plot of scalp. Each of the functionality is described by figures below.

https://github.com/anisa2aftab/AVMIB/blob/main/Fig3.jpg

https://github.com/anisa2aftab/AVMIB/blob/main/Fig4.jpg

https://github.com/anisa2aftab/AVMIB/blob/main/Fig5.jpg

https://github.com/anisa2aftab/AVMIB/blob/main/Fig6.jpg

https://github.com/anisa2aftab/AVMIB/blob/main/Fig7.jpg
## Demo

### Below is the demo video link for each module

https://github.com/user-attachments/assets/70553f9e-f061-4241-ba4c-b4d90755efbe

https://github.com/user-attachments/assets/20e64bd5-04dc-46d1-9929-f1082cf74dc5

https://github.com/user-attachments/assets/99d8ac3a-5b19-4dec-a414-5fa1866b8df8

https://github.com/user-attachments/assets/fb4cd6f0-87cd-4502-b1ac-e9391c08d80c
## Documentation

https://github.com/anisa2aftab/AVMIB/blob/main/AVMIB_documentation.pdf
## Installation

Here is the details installation steps

 https://github.com/anisa2aftab/AVMIB/blob/main/supplementary_doc.pdf   