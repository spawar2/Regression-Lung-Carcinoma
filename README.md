# Regression-Lung-Carcinoma collaboration with Dr. Chandrajit. Lahiri, Sunway University, Malaysia. https://scholar.google.co.in/citations?user=cZaBPOoAAAAJ&hl=en
[R: randomForest, caret]. Date created/updated: December, 9, 2024.
Evaluating performance of regression and classification models with prognostic markers in lung carcinomas.
<img width="844" alt="IWBBIO" src="https://github.com/spawar2/Regression-Lung-Carcinoma/assets/25118302/2b4d0c58-a38b-455a-98b8-ec9b7a59a7e4">
<img width="169" alt="Bioinformatics and Biomedical Engineering" src="https://github.com/spawar2/Regression-Lung-Carcinoma/assets/25118302/b47119ce-9ea6-45ea-9ce1-c5b115d62340">
Common cancer biomarkers of breast and ovarian types identified through artificial intelligence, Shrikant Pawar, Tuck Onn Liew, Stanam, A., Dr. Lahiri, Publication: Wileys: Chemical Biology and Drug Design (Publication date: May 15), collaboration with Dr. Lahiri, Sunway University, Malaysia IF=2.9.Github, Article link, [Cited times: 4]^^^ DOI: 10.1111/cbdd.13672, Issue: 3, Volume: 96, Pages: 995-1004. Digital Object Identifier (DOI)=Online International Standard Book Number (ISBN).
Evaluating Performance of Regression and Classification Models Using Known Lung Carcinomas Prognostic Markers, Shrikant Pawar, Mittal & Dr. Lahiri, Publication: Springer Lecture Notes in Networks and Systems (Publication date: June 18), collaboration with Dr. Lahiri, Sunway University, Malaysia, Github, Article link ^^[**2022:1]. 1,2,3,4,5. DOI: https://doi.org/10.1007/978-3-031-07802-6_35, Volume, Issue, Pages: 13347.
[Paper:](https://link.springer.com/chapter/10.1007/978-3-031-07802-6_35?noAccess=true)
<img width="427" alt="Screenshot 2023-05-17 at 10 31 25 AM" src="https://github.com/spawar2/Regression-Lung-Carcinoma/assets/25118302/32585821-8b43-4b5f-b755-a4c8ab7c2002">

International Work-Conference on Bioinformatics and Biomedical Engineering, Granada, Spain, 2 February, 2022. Evaluating Performance of Regression and Classification Models Using Known Lung Carcinomas Prognostic Markers, by Pawar SD, Mittal and Lahiri. Springer Bioinformatics and Biomedical Engineering.
††
†Corresponding author. ††First author. †††Second author. ††††Third author. †††††author.
[Link](https://iwbbio.ugr.es/IWBBIO_2022_PROGRAM.pdf)
[Link](https://www.claflin-computation.com/lab-journey?pgid=ktmii98q-5e06163d-8631-4535-940a-01fe508a9523)
https://campuspress.yale.edu/shrikantpawar/files/2024/05/IWBBIO-2022.pptx
Video presentation: https://www.youtube.com/watch?v=Y6skvhHVR2w&ab_channel=ShrikantPawar
Claflin University, Orangeburg, South Carolina, United States of America (USA). 
https://www.claflin.edu/
https://www.claflin.edu/academics-research/schools-departments/school-of-natural-sciences-and-mathematics/department-of-mathematics-computer-science/computer-science

Regression.R: Lung cancer Microarray data read, robust multi array (RMA) Normalization, LOGISTIC REGRESSION, Support vector machine, confusion matrix, accuracy, sensitivity, specificity, precision, recall, confusion matrix, log-loss, and area under curve and receiver operating characteristic, AUC-ROC.
selected function(neuralnet, colMedians, do.call, compute, randomForest, predict, confusionMatrix, svm, ggplot, predict, table, factor, glm, wald.test, as.numeric, sum).

Testing: table(testing$V2,pred_test) Prediction_test alive dead alive 214 5 dead 31 11 ((214+11)/(nrow(testing)))*100 [1] 86.2069.
