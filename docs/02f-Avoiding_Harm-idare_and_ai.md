




# IDARE and AI

IDARE stands for Inclusion, Diversity, Anti-Racism, and Equity. It is an acronym used by some institutions (such as the [Johns Hopkins Bloomberg School of Public Health](https://publichealth.jhu.edu/offices-and-services/office-of-inclusion-diversity-anti-racism-and-equity-idare), [the University of California, Davis](https://health.ucdavis.edu/diversity-inclusion/committees/departmental-committees-index.html), and the [University of Pennsylvania Perelman School of Medicine](https://www.med.upenn.edu/neurology/idare/)) to remind people about practices to improve [social justice](https://en.wikipedia.org/wiki/Social_justice). As we strive to use AI responsibly, keeping the major principles of IDARE in mind will be helpful to better ensure that individuals of all backgrounds and life experiences more equally benefit from advances in technological and that technology is not used to perpetuate harm.  

## AI is biased

Humans are biased, therefore data from text written by humans is often also biased, which mean AI systems built on human text are trained to be biased, even those created with the best intentions (@pethig_biased_2023).

To better understand your own personal bias, consider taking a test at https://implicit.harvard.edu/. 


<img src="resources/images/02f-Avoiding_Harm-idare_and_ai_files/figure-html//1L6-8DWn028c1o0p9gwXmz90BRcy_PjPqb683nbk1gHQ_g2aaead717c1_8_97.png" alt="Image of a mosaic robot" width="100%" style="display: block; margin: auto;" />



It is nearly impossible to create a training dataset that is free from all possible bias and include all possible example data, so by necessity the data used to train AI systems are generally biased in some way and lack data about people across the full spectrum of backgrounds and life experiences. This can lead to AI-created products that cause discrimination, abuse, or neglect for certain groups of people, such as those with certain ethnic or cultural backgrounds, genders, ages, sexuality, capabilities, religions or other group affiliations. Our goal is to create and use AI systems that are as inclusive and unbiased as possible while also keeping in mind that the system is not perfect. 

To learn more about how AI algorithms become biased, see https://www.criticalracedigitalstudies.com/peoplesguide. 


<div class = dictionary>

**Algorithmic Fairness** - The field of algorithmic fairness aims to mitigate the effects of bias in models or algorithms in AI. 

</div>

Importantly issues with bias can occur in all steps of model development. (@huang_evaluation_2022, @baker_algorithmic_2022). There are experts in fairness that can help you to avoid the potential harm caused by bias in your AI development. 

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

### Tips for Mitigating Bias

AI tools with training data that lacks data about certain ethnic or gender groups or disabled individuals could result in responses that do not adequately consider these groups, ignores them all together, or makes false associations.


<div class = foruse>
**For decision makers about AI use:**

- Where possible, use tools that are transparent about what training data was used and limitations of this data and actively evaluate the data for bias including:
    - if the dataset includes any harmful data, such as discriminatory and false associations
    - if training data is adequately inclusive for the given needs
- Where possible, users of commercial AI tools should ask prompts in a manner that includes concern for equity and inclusion
- Always question the responses from the tool for possible bias. Obtain expert review where possible. 
- Start slowly if rolling out the usage of new AI tools and continue to monitor used AI tools for bias.


:::{.query}
**Possible Generative AI Prompt:**
Why did you assume that the individual was male?
:::

</div>
<br>

<div class = fordev>
**For decision makers about AI development:**

- Be careful to use datasets that do not contain harmful data, such as discriminatory and false associations.
- Use datasets that adequately inclusive for the given needs.
- evaluate the training data and the model for biases and false associations as it is being developed instead of waiting to test the product after creation is finished.
- Verifying that the product works properly for potential use cases from a variety of ethnic, gender, ability, socioeconomic, language, and educational backgrounds.
- When possible, the developers should also augment the training dataset with data from groups that are missing or underrepresented in the original training dataset.
- Potentially consider creating different models for different populations to obtain better performance for different groups of people. However, be careful to be inclusive in the creation of such models. 
- Seek expert evaluation of your tools for bias.
- Be transparent about possible bias or dataset limitations to users.

</div>
## Be extremely careful using AI for decisions

There is a common misconception that AI tools might make better decisions for humans because they are believed to not be biased like humans (@pethig_biased_2023). However since they are built by humans and trained on human data, they are also biased. It is possible that AI systems specifically trained to avoid bias, to be inclusive, to be anti-racist, and  for specific contexts may be helpful to enable a more neutral party, but that is generally not currently possible.

We highly suggest caution with using AI to make or help make employment decisions about applicants or employees at this time. This includes recruitment, hiring, retention, promotions, transfers, performance monitoring, discipline, demotion, terminations, or other similar decisions. At a minimum, humans should be involved in the testing the AI system, evaluating the results of the AI system, and monitoring the system's behavior overtime. Experts of algorithm fairness should be consulted.

## More inclusive teams means better models

It is vital that teams hired for the development, auditing or testing of AI tools be as inclusive as possible and should follow the current best IDARE practices for standards for hiring standards. This will help to ensure that different perspectives and concerns are considered. 

<img src="resources/images/02f-Avoiding_Harm-idare_and_ai_files/figure-html//1L6-8DWn028c1o0p9gwXmz90BRcy_PjPqb683nbk1gHQ_g2aaead717c1_8_48.png" alt="An artistic image of a face that looks like it is being scanned for facial recognition." width="100%" style="display: block; margin: auto;" />


 
## Access

Improving access for all individuals holds the power to make the benefits of AI and other technology a reality to everyone. However expanding access should be done mindfully to empower others, rather than to exploit or create further vulnerability. 

The [Bill and Melinda Gates Foundation](https://www.gatesfoundation.org/) has suggested [principles](https://www.gatesfoundation.org/ideas/articles/artificial-intelligence-ai-development-principles) (@Gates_principles) for their work to expand AI access responsibly, including the following summarized here :

1) Adhering to core values of helping all people reach their full potential
1) Promoting co-design and inclusivity by including individuals in low-income settings to be collaborators and partners and acknowledging infrastructure limitations.
1) Proceeding responsibly with continuous improvement in a step-wise fashion
1) Addressing Privacy and security concerns by regularly performing assessments and ensuring compliance with relevant regulations and laws, as well as careful consent practices
1) Building equitable access - focusing not just on access distribution by on equitable ownership and maintenance and development
1) Committing to transparency - Sharing information for public good


## Summary

In summary we suggest you consider the following to better promote the well-being of all individuals when approaching AI:

- Recognize that humans are biased and AI systems created by humans are therefore biased. They typically currently enhance bias, unless mindfully engineered for specific contexts with appropriate training data. 
- Recognize that sometimes AI works in unexpected ways and systems can be biased in ways that are not fully understood
- Testing, auditing, and questioning AI systems about bias can help mitigate harm
- Using AI for decisions at this point in time could be very harmful towards vulnerable populations. AI should not be used for any important decisions without human oversight.
- More inclusive AI teams can help us build more responsible and more useful models 
- Enhancing access to AI tools has the potential to improve the well-being of individuals in places with other limited technology or healthcare access, however this needs to be done in a collaborative manner to avoid harm and exploitation 

<div class = disclaimer>
**Disclaimer:** The thoughts and ideas presented in this course are not to be substituted for legal or ethical advice and are only meant to give you a starting point for gathering information about AI policy and regulations to consider.
</div>

