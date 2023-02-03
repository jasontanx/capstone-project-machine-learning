# Capstone-Project-Machine-Learning - Tourism Domain
This final semester project is carried out as part of the coruse (*MSc in Data Science and Business Analytics*) requirement I enrolled.

Topic: **Building a Novel Predictive Model to Predict Tourist Travel Preferences for Effective Planning of Domestic Tour Packages**

Presentation Deck: [Click Here](https://www.canva.com/design/DAFIQTkg-D4/kfzYU3i2xx--T5Zdw5PTvg/view?utm_content=DAFIQTkg-D4&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton)

Steps | Sections Invovled | Tools Used | Main Packages Involved
--- | --- | --- | --- 
1 | Initial Data Exploration | Python - Google Colab | N/A 
2 | Exploratory Data Analysis | R Programming | ggplot2 & dplyr 
3 | Data Pre-Processing | Python - Google Colab | Numpy, Pandas & Sklearn (LabelEncoder & OneHotEncoder)
4 | Modelling (Clustering) | Python - Google Colab | KModes & Matplotlib 
5 | Feature Selection | R Programming | Boruta
6 | Modelling (Classification) | Python - Google Colab | Sklearn (Model Selection, LogisticRegression, DecisionTreeClassifier, MLPClassifier, RandomForestClassifier)
7 | Evaluation | Python - Google Colab | Sklearn (Classification report & Confusion matrix) 
8 | Deployment | Python - Google Colab | Streamlit, Pickle & Pyngrok / Ngrok 

# Introduction
## Why do I select this topic as my final semester capstone project?
- Tourism industry’s crucial contribution to Malaysia's Gross Domestic Product ✈️
- Industry badly affected due to the Covid-19 pandemic 😷
- Post Covid-19 recovery on path for the travel industry 📈
- Huge potential in utilising Machine Learning to attract tourists (*and for the whole industry*) 🤖

## What is the problem statement of the project?
- The lack of a predictive model and focus on identifying tourist preferences has led to inefficient planning of domestic tour packages by Malaysian tourist operators

## Research Questions / Answers I am finding 🌟
In addressing the issues associated with the design and scheduling of the tour packages, a few questions were developed:
- How to effectively cluster the collected data into several clusters for classification?
- What are the predictive modelling approaches that could effectively provide an accurate prediction of tourists’ clusters for efficient planning of domestic tour packages?
- What are the valid recommendations that could be provided to the relevant authorities to enhance the scheduling of tour package?

## Aims & Objectives
The aim of this project is to develop a novel **data mining solution** to accurately predict tourist travel preferences for the scheduling of domestic tour packages in Malaysia.

With this, the 3 objectives of the project are listed below:
- To develop a clustering model to effectively cluster the collected data into respective clusters for classification purposes.
- To develop data mining models using predictive modelling approaches to predict tourist travel clusters for efficient planning of domestic tour packages.
- To draft relevant and valid recommendations for the relevant authorities.

# Methodology
## What methodology was used to carry out the project?
- “CRoss-Industry Standard Process for Data Mining” or CRISP-DM methodology 
- Frequently used for data science projects and is the standard data mining methodology used to obtain useful information from the dataset
- 6 stages invovled in CRISP-DM

The data was collected through a questionnaire survey with the [All Questioned Asked](https://docs.google.com/document/d/1-F5-BUVTxxIqGTwiTcCSBmVmTaE4-8XCIREsdPRw248/edit)

# Project Implementation
## Data Understanding
- Initial Data Exploration Repo: [Click Here](https://github.com/jasontanx/Capstone-Project-Machine-Learning/tree/master/Initial%20Data%20Exploration)
- Exploratory Data Analysis (EDA) Repo: [Click here](https://github.com/jasontanx/Capstone-Project-Machine-Learning/tree/master/Exploratory%20Data%20Analysis)
  - Univariate Analysis
  - Bivariate Analysis

## Data Preparation & Clustering (Phase 1)
- Data Pre-Processing & Clustering Repo: [Click Here](https://github.com/jasontanx/Capstone-Project-Machine-Learning/tree/master/Data%20Pre--Processing%20%26%20Clustering)
  - Level Combination (Combining the levels in categorical variables that had many levels) 
  - E.g. The “age” variable initially had a total of 4 categories. However, the last two categories only account for less than 5 observations. As such, “35-49 years old” group and “50 and above” group were combined with the “26 - 34 years old” group)
  - Unsupervised Learning: K-Modes Clustering

## Data Preparation & Modelling (Phase 2)
- Data Pre-Processing & Modelling Repo: [Click Here](https://github.com/jasontanx/Capstone-Project-Machine-Learning/tree/master/Data%20Pre-Processing%20%26%20Modelling)
  - Feature Selection: Boruta Algorithm (Finding the answer of...*which variables does not play a significant role in predicting the dependent variable?*)
  - Label encoding and One-hot encoding
  - Logistic Regression / Decision Tree / Artificial Neural Network (ANN) / Random Forest

## Deployment
- Model Deployment Repo: [Click Here](https://github.com/jasontanx/Capstone-Project-Machine-Learning/tree/master/Model%20Deployment)
- Sample web application could be viewed below

*Sample temporary web application UI - Sample 1*

![git_3_model_deploy](https://user-images.githubusercontent.com/116934441/216323016-9ba46377-001f-4f4b-845a-d665030d104f.png)

*Web application UI prediction (Proof of Concept) - Sample 2*

![git_4_model_deploy](https://user-images.githubusercontent.com/116934441/216323600-d66ed212-a511-47ad-af10-d24fb332e7ec.png)


# Conclusion
Aims - **Accomplished**
- K-Modes clustering model was successfully developed with the data collected from a questionnaire survey.

Objectives - **Accomplished**

- A total of 4 models were developed (LR, DT, ANN and RF)
- Suggestions on future model iterations provided & Potential collaborations with relevant stakeholders provided
- Eventually, ANN was selected as the final model to be deployed due to its high prediction accuracy and better evaluation metrics as compared with the others.

![git_2_model_eval](https://user-images.githubusercontent.com/116934441/216322622-2e896001-623f-48de-8d6f-8ffd0f2de5d2.png)


# Project Overview
![git_1](https://user-images.githubusercontent.com/116934441/215822321-ae8134b8-8f66-4604-bca5-5810b564905d.png)


