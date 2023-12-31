




# IDARE and AI

IDARE stands for Inclusion, Diversity, Anti-Racism, and Equity. It is an acronym used by some institutions (such as the [Johns Hopkins Bloomberg School of Public Health](https://publichealth.jhu.edu/offices-and-services/office-of-inclusion-diversity-anti-racism-and-equity-idare), [the University of California, Davis](https://health.ucdavis.edu/diversity-inclusion/committees/departmental-committees-index.html), and the [University of Pennsylvania Perelman School of Medicine](https://www.med.upenn.edu/neurology/idare/)) to remind people about practices to improve [social justice](https://en.wikipedia.org/wiki/Social_justice). As we strive to use AI responsibly, keeping the major principles of IDARE in mind will be helpful to better ensure that individuals of all backgrounds and life experiences more equally benefit from advances in technological and that technology is not used to perpetuate harm.  

## AI is biased

Humans are biased, therefore data from text written by humans is often also biased, which mean AI systems built on human text are trained to be biased, even those created with the best intentions (@pethig_biased_2023).

To better understand your own personal bias, consider taking a test at https://implicit.harvard.edu/. 

It is nearly impossible to create a training dataset that is free from all possible bias and include all possible example data, so by necessity the data used to train AI systems are generally biased in some way and lack data about people across the full spectrum of backgrounds and life experiences. This can lead to AI-created products that cause discrimination, abuse, or neglect for certain groups of people, such as those with certain ethnic or cultural backgrounds, genders, ages, sexuality, capabilities, religions or other group affiliations. Our goal is to create and use AI systems that are as inclusive and unbiased as possible while also keeping in mind that the system is not perfect. 

To learn more about how AI algorithms become biased, see https://www.criticalracedigitalstudies.com/peoplesguide. 

## Examples of AI Bias

There are many examples in which biased AI systems were used in a context with negative consequences. 

### Amazon's resume system was biased against women

Amazon used an AI system was to help filter candidates for jobs. They started using the system in 2014. In 2015, it was discovered that the system penalized resumes that included words like "women's", and also for graduates of two all-women's colleges (@dastin_insight_2018). 

How did this happen? The model was trained on resume's of existing Amazon employees and most of their employees were male. Thus the training data for this system was not gender inclusive, which lead to bias in the model.

### X-ray studies show AI surprises


Algorithms used to evaluate medical images seem to be predicting the self-reported race of the individuals in the images from the images alone (@gichoya_ai_2022).  This is despite the fact that the radiologists examining those same images were not able to identify what aspect about the images helped the AI systems identify the race of the individuals. Why is this a problem? That information from models that evaluate medical images are being used to help suggest care. It is recognized that health disparities exist in the treatment of different racial groups. Therefore bias related to these disparities may be perpetuated by algorithms even when the AI system is trained in a manner that is "blind" to the self-reported race of the individuals.

This example shows that AI systems can possibly amplify existing biases even when humans are unaware of the AI systems using those biases to make decisions.

This is especially a problem, as some populations are under-diagnosed and therefore denied care or they receive poorer care because an AI system does not work as well for their population (@ricci_lara_addressing_2022). As an example,  a study evaluating diagnosis of various diseases from chest X-ray images, found that certain groups of patients, such as females, those under 20,  those who self report as Black or Hispanic, were more likely to be falsely flagged by  AI system as healthy when they in fact had an issue (@seyyed-kalantari_underdiagnosis_2021).  Another example shows that processing of cardiac images from specific patient populations is much poorer using models where the training set was not diverse enough (@puyol-anton_fairness_2021). 

However, there is promise for good AI systems to mitigate bias. For example,  a team studying pain levels in osteoarthritis (a disease where under-served populations often have higher than expected levels of pain) found that using predictions of pain based on AI system examining images were much more accurate than predictions from radiologists examining those same images (@pierson_algorithmic_2021).  

A magazine article describing this work stated:

> In this case, researchers were training the models based on physician reports of pain, and since doctors are less likely to believe marginalized people when they report pain, this algorithm replicated this bias. When a team of computer scientists at the University of California, Berkeley, tweaked the algorithm to factor in patient pain reports rather than a physician’s, however, they eliminated that racial bias, paving the way for more equitable treatment of osteoarthritis." (@Arnold_23)

## Mitigation

When working with AI systems, users should actively identify any potential biases used in the training data for a particular AI system. In particular, the user should look for harmful data, such as discriminatory and false associations included in the training dataset, as well as verify whether the training data is adequately inclusive for your needs. A lack of data about certain ethnic or gender groups or disabled individuals could result in a product that does not adequately consider these groups, ignores them all together, or makes false associations. Where possible, users of commercial AI tools should ask prompts in a manner that includes concern for equity and inclusion, they should use tools that are transparent about what training data was used and limitations of this data, and they should always question the responses from the tool for possible bias. 



:::{.query}
Why did you assume that the individual was male?
:::


Those developing or augmenting models should also evaluate the training data and the model for biases and false associations as it is being developed instead of waiting to test the product after creation is finished. This includes verifying that the product works properly for potential use cases from a variety of ethnic, gender, ability, socioeconomic, language, and educational backgrounds. When possible, the user should also augment the training dataset with data from groups that are missing or underrepresented in the original training dataset. 

# Be extremely careful using AI for decisions

There is a common misconception that AI tools might make better decisions for humans because they are believed to not be biased like humans (@pethig_biased_2023). However since they are built by humans and trained on human data, they are also biased. It is possible that in the future AI systems specifically trained to avoid bias, to be inclusive, to be anti-racist,  for specific contexts may be helpful to enable a more neutral party, but that is not currently possible.

AI should not be used to make or help make employment decisions about applicants or employees at this time. This includes recruitment, hiring, retention, promotions, transfers, performance monitoring, discipline, demotion, terminations, or other decisions. 

## More inclusive teams means better models

Furthermore, it is vital that teams hired for the development, auditing or testing of AI tools be as inclusive as possible and should follow the current best IDARE practices for standards for hiring standards. This will help to ensure that different perspectives and concerns are considered. 

 

Resources:  

https://arxiv.org/abs/2311.14096 

https://www3.weforum.org/docs/WEF_A_Blueprint_for_Equity_and_Inclusion_in_Artificial_Intelligence_2022.pdf  

https://magazine.jhsph.edu/2022/how-biased-data-and-algorithms-can-harm-health  

https://research.csiro.au/ss/science/projects/responsible-ai-pattern-catalogue/rai-standard/ 

https://www.tandfonline.com/doi/full/10.1080/08839514.2023.2176618  
