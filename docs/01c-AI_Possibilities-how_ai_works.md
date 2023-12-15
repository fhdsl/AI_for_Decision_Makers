


# VIDEO How AI Works

TODO: Slides here: https://docs.google.com/presentation/d/1OydUyEv1uEzn8ONPznxH1mGd4VHC9n88_aUGqkHJX4I/edit#slide=id.g263e06ef889_36_397

# How AI Works

Let's briefly revisit our definition of AI: it must have data, algorithm(s), and an interface. Let's dive into each of these in more detail below.

## Early Warning for Skin Cancer

Each year in the United States, 6.1 million adults are treated for skin cancer (basal cell and squamous cell carcinomas), totaling nearly $10 billion in costs [@CDC2023]. It is one of the most common forms of cancer in the United States, and mortality from skin cancer is a real concern. Fortunately, early detection through regular screening can increase survival rates to over 95% [@Melarkode2023]. Cost and accessibility of screening providers, however, means that many people aren't getting the preventative care they need.

Increasingly, AI is being used to flag potential skin cancer. AI focused on skin cancer detection could be used by would-be patients to motivate them to seek a professional opinion, or by clinicians to validate their findings or help with continuous learning.

1. **Data**: Images of skin

1. **Algorithm**: Detection of possible skin cancer

1. **Interface**: Web portal or app where you can submit a new picture

## Collecting Datapoints

Let's say a clinician, *Dr. Derma*, is learning how to screen for skin cancer. When Dr. D sees their first instance of skin cancer, they now have one data point. Dr. D could make future diagnoses based on this one data point, but it might not be very accurate. Over time, as Dr. D does more screenings of skin with and without cancer, they will get a better and better idea of what skin cancer looks like. This is part of what we do best. Human beings are powerhouses when it comes to pattern recognition and processing [@Mattson2014].

Like Dr. D, AI will get better at finding the right patterns with more data. In order to train an AI algorithm to detect possible skin cancer, we'll first want to gather as many pictures of normal and cancerous skin as we can. This is the **raw data** [@Leek2017].

![](resources/images/01c-AI_Possibilities-how_ai_works_files/figure-docx//1OydUyEv1uEzn8ONPznxH1mGd4VHC9n88_aUGqkHJX4I_g263e06ef889_36_153.png){width=100%}

### What Is Data

In our skin cancer screening example, our data is all of the information stored in an image. However, data comes in many shapes and forms. Data can be **structured**, such as a spreadsheet of the time of day plus traffic volume or counts of viral particles in different patients. Data can also be **unstructured**, such as might be found in social media text or genome sequence data. 

Other kinds of data can be collected and used to train algorithms. These might include survey data collected directly from consumers, medical data collected in a healthcare setting, purchase or transaction tracking, and online tracking of your time on certain web pages [@Cote2022].

Quantity *and* quality of data are very important. More data makes it easier to detect and account for minor differences among observations. However, that shouldn't come at the cost of quality. It is sometimes better to have fewer, high resolution or high quality images in our dataset than many images that are blurry, discolored, or in other ways questionable.

<div class = "ethics"> 
Representative diversity of datasets is crucial for the effectiveness of AI. For instance, if an AI used for skin cancer screening only encounters instances of skin cancer on lighter skin tones, it might fail to alert individuals with darker skin tones. 

The tech industry's lack of diversity contributes to these issues, often leading to the discovery of failures only after harm has occurred.
</div>

Large Language Models (LLMs), which we will cover later, are great examples of high quantity and quality of data. Think about how much text information is freely available on the internet! Throughout the internet, we're much more likely to see the phrase "cancer is a disease" than "cancer is a computer program". Many LLMs are trained on sources like [Wikipedia](https://www.wikipedia.org/), which are typically grammatically sound and informative, leading to higher quality output.


![](resources/images/01c-AI_Possibilities-how_ai_works_files/figure-docx//1OydUyEv1uEzn8ONPznxH1mGd4VHC9n88_aUGqkHJX4I_g2a3877ab699_0_79.png){width=100%}

<div class = "ethics"> 
It is **essential** that you and your team think critically about data sources. Many companies releasing generative AI systems have come under fire for training these systems on data that doesn't belong to them [@Walsh2023]. Individual people also have a right to data privacy. No personal data should be used without permission, even if that data could be interesting or useful.  

</div>

### Preparing the Data

It's important to remember that AI systems need specific instructions to start detecting patterns. We'll need to take our raw data and indicate which pictures are positive for skin cancer and which aren't. This process is called **labeling** and has to be done by humans.

Once data is labeled, either "cancer" or "not cancer", we can use it to train the algorithm in the next step. This data is aptly called **training data**.


![](resources/images/01c-AI_Possibilities-how_ai_works_files/figure-docx//1OydUyEv1uEzn8ONPznxH1mGd4VHC9n88_aUGqkHJX4I_g263e06ef889_36_318.png){width=100%}

## Understanding the Algorithm

Our goal is "detection of possible skin cancer", but how does a computer do that?

First, we'll need to break down the image into attributes called **features**. This could be the presence of certain color pixels, percentage of certain shades, spot perimeter regularity, or other features. Features can be determined by computers or by data scientists who know what kind of features are important. It's not uncommon for an AI looking at image data to have thousands of features.

Because we've supplied a bunch of images with labels, AI can look for patterns that are present in cancerous images that are not present in others.

As an example, here is a very simple algorithm with one feature (spot perimeter):

1. Calculate the perimeter of a darker spot in the image.

1. If the perimeter of the spot is exactly circular, label the image "not cancer".

1. If the perimeter of the spot is not circular, label the image "cancer".

### Testing the Algorithm

After setting up and quantifying the features, we want to make sure the AI is actually doing a good job. We'll take some images the AI hasn't seen before, called **test data**. We know the correct answers, but the AI does not. The AI will measure the features within each of the images to provide an educated guess of the proper label. Every time AI gets a label wrong, it will reassess parts of the algorithm. For example, it might make the tweak below:

1. Calculate the perimeter of a darker spot in the image.

1. If the perimeter of the spot is close to circular, label the image "not cancer".

1. If the perimeter of the spot is not close to circular, label the image "cancer".

Humans play a big part in what kind of scores are acceptable when producing outputs. With cancer screening, we might be very worried about missing a real instance of cancer. Therefore, we might tell the AI to score false negatives more harshly than false positives.

![](resources/images/01c-AI_Possibilities-how_ai_works_files/figure-docx//1OydUyEv1uEzn8ONPznxH1mGd4VHC9n88_aUGqkHJX4I_g263e06ef889_36_360.png){width=100%}

## Interfacing with AI

Finally, AI would not work without an interface. This is where we can get creative. In our skin cancer screening, we might create a website where providers or patients could upload a picture of an area that needs screening. 

- Because skin images could be considered medical data, we would need to think critically about what happens to images after they are uploaded. Are images deleted after a screening prognosis is made? Will images be used to update the training data?

- Telling people they might have cancer could be very upsetting for them. Our interface should provide supporting resources and clear disclaimers about its abilities.

![](resources/images/01c-AI_Possibilities-how_ai_works_files/figure-docx//1OydUyEv1uEzn8ONPznxH1mGd4VHC9n88_aUGqkHJX4I_g263e06ef889_36_397.png){width=100%}
