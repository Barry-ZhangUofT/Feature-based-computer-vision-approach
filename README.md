# Paper-Metal powder flowability prediction
---
"A Computer Vision Approach to Evaluate Powder Flowability for Metal Additive Manufacturing" by Jiahui Zhang,  Mahdi Habibnejad-korayem, Zhiying Liu, Tianyi Lyu, Qiang Sun, Yu Zou. The abstract of the paper is as follows:

>"Additive manufacturing (AM) is a transformative technology to many industries that enables the fabrication of parts with complex geometries. A vast majority of powder-bed metal AM techniques use powder as feedstock. The powder packing behavior and flowability significantly influence the defect density of as-built parts and, eventually, affect their reliability and mechanical performance. The experimental characterization methods of powder flowability, for example, Hausner ratio, Carr index, and angle of repose, are rather time-consuming and cost-inefficient. Here, we show a rapid-deployed, low-cost, and reliable computer vision approach to evaluate powder flowability based on scanning electron microscopy images. We have trained seven machine learning models using 2,212 SEM images from 16 types of commonly used plasma-atomized metal powders in AM. Our results indicate that the vector of locally aggregated descriptors model with speedup robust features performs best among the models, represented by about 12 ± 7%. The mean absolute percentage error value is lower than the traditional convolutional neural network model. The image analysis model can be implemented without a powerful computing system. The performance of such a model is robust to the changes in image brightness. This study also demonstrates that our model can successfully predict the flowability of metal powder that does not exist in the original dataset. Such a computer vision approach provides an effective and efficient tool to evaluate and predict the powder flowability for AM."

## Data:
For this study, 16 different widely used commercial plasma atomized metal powders (AP&C, Canada) were chosen for SEM imaging. For each powder, about 28–40 images were collected with a size of 1280*960 pixels in 150 × magnification and split into four images for each, totally yielding a dataset of 2,212 SEM images. The dataset of powder SEM images can be made available upon reasonable request to J. Zhang. 

## Description:
All the models are trained via MATLAB 2021. The vlfeat toolbox can be found and downloaded at http://www.vlfeat.org/.

## Schematics diagram of the generation of feature-based representations:
![image](https://github.com/Barry-ZhangUofT/Feature-based-computer-vision-approach/assets/65192706/871d6d24-7f20-42e7-8c62-b6527ad1b3d2)




