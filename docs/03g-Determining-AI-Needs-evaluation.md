# VIDEO: Evaluating your customized AI tool

This video discusses how to evaluate your customized AI tool.

<!-- <iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/ID" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

You can view and download the Google Slides [here](https://docs.google.com/presentation/d/1ucUX_guHTpuFipcdMKgi_8BGKNzLYtntobyEqZYdDFM/edit). -->

# Evaluating your customized AI tool

<div class = disclaimer>
**Disclaimer:** The thoughts and ideas presented in this course are not to be substituted for legal or ethical advice and are only meant to give you a starting point for gathering information about AI policy and regulations to consider.
</div>

## Learning objectives:

- Understand the motivation behind evaluating your customized AI tool
- Define your own goals for evaluating the accuracy, computational efficiency, and usability of your AI tool
- Recognize metrics that could be used for evaluation of accuracy, computational efficiency, and usability.

## Intro

Evaluating a software tool is critical. This is for multiple reasons that feed into each other.  

![](03g-Determining-AI-Needs-evaluation_files/figure-docx//1rdVYJyS7xLYDsoZwC99VyQSnnaKelUnsVG4j2rHWjFA_g2a0db34665a_0_6.png){width=100%}

1. Evaluating your AI tool will help identify areas for improvement
2. Evaluating your AI tool will demonstrate value to funders so you can actually make those improvements

It's important to keep the pulse on your project as it is developing. But once you have a stable AI tool, its a good time to gather initial evaluations.

![](03g-Determining-AI-Needs-evaluation_files/figure-docx//1ucUX_guHTpuFipcdMKgi_8BGKNzLYtntobyEqZYdDFM_g2a6c15e7d80_0_0.png){width=100%}

As a reminder, generally a good AI tool is accurate in that it gives output that is useful. It is also computationally efficient in that we won’t be able to actually deploy the tool if it is computationally costly or takes too long to run a query.

![](03g-Determining-AI-Needs-evaluation_files/figure-docx//1ucUX_guHTpuFipcdMKgi_8BGKNzLYtntobyEqZYdDFM_g2a6c15e7d80_0_176.png){width=100%}

But for the purposes of evaluation, we’re going to add one more point of evaluation which is a good AI tool is usable. Even if you do not have “users” in the traditional sense; you are designing your tool only for within your team or organization, you will still need it to be functionally usable by the individuals you have intended to use it. Otherwise the fact that it is accurate and computationally efficient will be irrelevant if no one can experience that accuracy and efficiency.


## Evaluating Accuracy of an AI model

How you evaluate the accuracy of your AI model will be highly dependent on what kind of AI model you have -- text to speech, text to image, large language model chatbot, a classifier, etc. This will determine what kinds of “ground truth” you have available. For a speech to text model for example, what was the speaker actually saying? What percentage of the words did the AI tool translate correctly to text?

Secondly your evaluation strategies will dependent on what your goals are – how do you define success for your AI tool? What was your original goals for this AI tool? Are they meeting those goals?

![](03g-Determining-AI-Needs-evaluation_files/figure-docx//1ucUX_guHTpuFipcdMKgi_8BGKNzLYtntobyEqZYdDFM_g2a6c15e7d80_0_400.png){width=100%}

LLM chatbots can be a bit tricky to evaluate accuracy -- how do you know if the response it gave a user was what the user was looking for? But there's a number of options and groups who are working on establishing methods and standards for LLM evaluation.

**Some examples at this time:**  

- [MOdel kNowledge relIabiliTy scORe (MONITOR)](https://arxiv.org/pdf/2310.09820.pdf)
- [google/BIG-bench](https://github.com/google/BIG-bench)
- [GLUE Benchmark](https://gluebenchmark.com/)
- [Measuring Massive Multitask Language Understanding](https://github.com/hendrycks/test)  

![](03g-Determining-AI-Needs-evaluation_files/figure-docx//1ucUX_guHTpuFipcdMKgi_8BGKNzLYtntobyEqZYdDFM_g2a6c15e7d80_0_329.png){width=100%}


## Evaluating Computational Efficiency of an AI model

Evaluating computational efficiency is important not only for the amount of time it takes to get useful output from your AI tool, but also will influence your computing bills each month. As mentioned previously, you'll want to strike a balance between having an efficient but also accurate AI tool.

Besides being shocked by your computing bill each month, there's more fore thinking ways you can keep tabs on your computational efficiency.


![](03g-Determining-AI-Needs-evaluation_files/figure-docx//1ucUX_guHTpuFipcdMKgi_8BGKNzLYtntobyEqZYdDFM_g2a6c15e7d80_0_329.png){width=100%}

Examples of metrics you may consider collecting:  

- Average time per job - How much time
- Capacity - Total jobs that can be run at once
- FLOPs (Floating Point Operations) - measure the computational cost or complexity of a model or calculation [More about FLOPs](https://www.kdnuggets.com/2023/06/calculate-computational-efficiency-deep-learning-models-flops-macs.html).

## Evaluating Usability of an AI model

Usability and user experience (UX) experts are highly valuable to have on staff. But whether or not you have the funds for an expert is UX to be on staff, more informal user testing is more helpful than no testing at all!

![](03g-Determining-AI-Needs-evaluation_files/figure-docx//1ucUX_guHTpuFipcdMKgi_8BGKNzLYtntobyEqZYdDFM_g2a6c15e7d80_0_387.png){width=100%}

Here's a very quick overview of what a usability testing workflow might look like:

- Decide what features of your AI tool you’d like to get feedback on
- Recruit and compensate participants
- Write a script for usability testing - always need to emphasize that if they the participant doesn’t know how to do something it is not their fault, its something that needs to be fixed with the tool!
- Watch 3 - 5 people try to do the task – often 3 is enough to illuminate a lot of problems to be fixed!
- Observe and take notes on what was tricky
- Ask participants questions!

[We recommend reading this great article about user testing](https://uxstudioteam.com/ux-blog/usability-testing/) or reading more from this [Documentation and Usability course](https://jhudatascience.org/Documentation_and_Usability/index.html#available-course-formats).

There's many ways to obtain user feedback, and surveys, and interface analytics.

![](03g-Determining-AI-Needs-evaluation_files/figure-docx//1ucUX_guHTpuFipcdMKgi_8BGKNzLYtntobyEqZYdDFM_g2a6c15e7d80_0_329.png){width=100%}
Some examples of metrics you may want to collect:

- Success rate - how many users were able to successfully complete the task?
- Task time - how long does it take them to do
- Net Promoter Score (NPS) - scale of 0 - 10 summarized stat to understand what percentage of users would actively recommend your tool to others.
- Qualitative data and surveys - don’t underestimate the power of asking people their thoughts!
