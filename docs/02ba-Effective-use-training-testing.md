

# VIDEO Effective use of Training and Testing data

https://docs.google.com/presentation/d/11oUc4KvmSiQBCj8rzj9v_e5te62qBIyriFHG_hQvFZA/edit#slide=id.p

# Effective use of Training and Testing data

In the previous chapter, we started to think about the ethics of using representative data for building our AI model. In this chapter we will see that even if our data is inclusive and represents our population of interest, issues can still happen if the data is mishandled during the AI model building process. Let's take a look at how that can happen.

## Population and sample

The data we collect to train our model is typically a limited representation of what we want to study, and as we explored in the previous chapter, bias can arise through our choice of selection. Let us define two terms commonly used in artificial intelligence and statistics: the **population** is the entire group of entities we want to get information from, study, and describe. If we were building an artificial intelligence system to classify dog photographs based on their breeds, then the population is every dog photograph in the world. That’s prohibitively expensive and not easy data to acquire, so we use a **sample**, which is a subset of the population, to represent our desired population.

Even if we are sure that the sample is representative of the population, a different type of bias, in this case [statistical bias](https://en.wikipedia.org/wiki/Bias_(statistics)) can arise. It has to do with how we use the sample data for training and evaluating the model. If we do this poorly, it can result in a model that gives skewed or inaccurate results at times, and/or we may overestimate the performance of the model. This statistical bias can also result in the other type of bias we have already described, in which a model unfairly impacts different people, often called unfairness.

There are many other sources of unfairness in model development - see @baker_algorithmic_2022. 

![](resources/images/02ba-Effective-use-training-testing_files/figure-docx//11oUc4KvmSiQBCj8rzj9v_e5te62qBIyriFHG_hQvFZA_g262d5f57190_0_0.png){width=100%}


## Training data

![](resources/images/02ba-Effective-use-training-testing_files/figure-docx//11oUc4KvmSiQBCj8rzj9v_e5te62qBIyriFHG_hQvFZA_g262d5f57190_0_22.png){width=100%}


The above image depicts some of our samples for building an artificial intelligence model to classify dog photographs based on their breeds. Each dog photograph has a corresponding label that gives the correct dog breed, and the goal of the model training process is to have the artificial intelligence model learn the association between photograph and dog breed label. For now, we will use *all of our samples for training the model*. The data we use for model training is called the **training data**. Then, once the model is trained and has learned the association between photograph and dog breed, the model will be able make new predictions: given a new dog image without its breed label, the model will make a prediction of what its breed label is. 

## Testing data

![](resources/images/02ba-Effective-use-training-testing_files/figure-docx//11oUc4KvmSiQBCj8rzj9v_e5te62qBIyriFHG_hQvFZA_g262d5f57190_0_28.png){width=100%}


To evaluate how well this model is good as predicting dog breeds from dog images, we need to use some of our samples to evaluate our model. The samples being used for model evaluation is called the **testing data**. For instance, suppose we used these four images to score our model. We give it to our trained model without the true breed label, and then the model makes a prediction on the breed. Then we compare the predicted breed label with the true label to compute the model accuracy. 


## Evaluation


![](resources/images/02ba-Effective-use-training-testing_files/figure-docx//11oUc4KvmSiQBCj8rzj9v_e5te62qBIyriFHG_hQvFZA_g262d5f57190_0_38.png){width=100%}

Suppose we get 3 out of 4 breed predictions correct. That would be an accuracy of 75 percent.

## Proper separation of Training and Testing data

![](resources/images/02ba-Effective-use-training-testing_files/figure-docx//11oUc4KvmSiQBCj8rzj9v_e5te62qBIyriFHG_hQvFZA_g262d5f57190_0_57.png){width=100%}


However, we have inflated our model evaluation accuracy. The samples we used for model evaluation were also used for model training! Our training and testing data are not independent of each other. Why is this a problem? When we train a model, the model will naturally perform well on the training data, because the model has seen it before. This is called **Overfitting**. In real life, when the dog breed image labeling system is deployed, the model would not be seeing any dog images it has seen in the training data. Our model evaluation accuracy is likely too high because it is evaluated on data it was trained on. 


![](resources/images/02ba-Effective-use-training-testing_files/figure-docx//11oUc4KvmSiQBCj8rzj9v_e5te62qBIyriFHG_hQvFZA_g262d5f57190_0_65.png){width=100%}

Let’s fix this. Given a sample, we split it into two independent groups for training and testing. We use the training data for training the model, and we use the testing data for evaluating the model. They don’t overlap. 


![](resources/images/02ba-Effective-use-training-testing_files/figure-docx//11oUc4KvmSiQBCj8rzj9v_e5te62qBIyriFHG_hQvFZA_g262d5f57190_0_75.png){width=100%}

When we evaluate our model under this division of training and testing data, our accuracy will look a bit lower compared to our first scenario, but that is more realistic of what happens in the real world. Our model evaluation needs to be a simulation of what happens when we deploy our model into the real world! 


## Validation

Note that there should actually be an intermediate phase called validation, where we fine tune the model to be better at performing, in other words to improve the accuracy of predicting dog breeds, this should also ideally use a dataset that is independent from the training and testing set. You may also hear people use these two terms in a different order, where testing refers to the improvement phase and validation refers to the evaluation of the general performance of the model in other contexts.Sometimes the validation set for fine tuning is also called the development set. There are clever ways of taking advantage of more of the data for validation data, such as a method called "K-Fold cross validation", in which many training and validation data subsets are trained and evaluated and for more validation and to determine if performance is consistent across more of the data. This is especially beneficial of there is diversity within the dataset, to better ensure that the data performs well on some of the rarer data points (for example, a more rare dog breed) (@wikipedia_training_2023). 


## Conclusions

This seemingly small tweak in how data is partitioned during model training and evaluation can have a large impact on how artificial intelligence systems are evaluated. We always should have independence between training and testing data so that our model accuracy is not inflated. 

If we don't have this independence of training and testing data, many real-life promotions of artificial intelligence efficacy may be exaggerated. Imagine that someone claimed that their cancer diagnostic model from a blood draw is 90%. But their testing data is a subset of their training data. That would over-inflate their model accuracy, and it will less accurate than advertised when used on new patient data. Doctors would make clinical decisions on inaccurate information and potentially create harm. 




