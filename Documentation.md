---
title: "Documentation SAPP_COVID"
author: "Maria"
date: "30 de abril de 2020"
output: html_document
---
##Your Shiny Application

***
1. Write a shiny application with associated supporting documentation. The documentation should be thought of as whatever a user will need to get started using your application.
2. Deploy the application on Rstudio's shiny server
3. Share the application link by pasting it into the provided text box
4. Share your server.R and ui.R code on github

###The application must include the following:

- Some form of input (widget: textbox, radio button, checkbox, ...)
- Some operation on the ui input in sever.R
- Some reactive output displayed as a result of server calculations
- You must also include enough documentation so that a novice user could use your application.
- The documentation should be at the Shiny website itself. Do not post to an external link.

The Shiny application in question is entirely up to you. However, if you're having trouble coming up with ideas, you could start from the simple prediction algorithm done in class and build a new algorithm on one of the R datasets packages. Please make the package simple for the end user, so that they don't need a lot of your prerequisite knowledge to evaluate your application. You should emphasize a simple project given the short time frame.

###Your Reproducible Pitch Presentation

OK, you've made your shiny app, now it's time to make your pitch. You get 5 slides (inclusive of the title slide) to pitch a your app. You're going to create a web page using Slidify or Rstudio Presenter with an html5 slide deck.

Here's what you need

1. 5 slides to pitch our idea done in Slidify or Rstudio Presenter
2. Your presentation pushed to github or Rpubs
3. A link to your github or Rpubs presentation pasted into the provided text box

###Your presentation must satisfy the following

* It must be done in Slidify or Rstudio Presenter
* It must be 5 pages
* It must be hosted on github or Rpubs

It must contained some embedded R code that gets run when slidifying the document

###Review criterialess 

Your Shiny Application

* Was there enough documentation on the shiny site for a user to get started using the application?
* Did the application run as described in the documentation?
* Was there some form of widget input (slider, textbox, radio buttons, checkbox, ...) in either ui.R or a custom web page?
* Did server.R perform some calculations on the input in server.R?
* Was the server calculation displayed in the html page?
* Was the app substantively different than the very simple applications built in the class? Note, it's OK if the app is simple and based on the one presented in class. I just don't want it to be basically a carbon copy of the examples we covered. For example, if someone simply changed the variable names, then this would not count. However, a prediction algorithm that had a similar layout would be fine.
* Here's your opportunity to give the app +1 for being well done, or neat, or even just a solid effort.

##Your Reproducible Pitch

* Was the presentation completed in slidify or R Presenter?
* Was it 5 pages?
* Did it contain an R expression that got evaluated and displayed?
* Did it contain an R expression that got evaluated and displayed?
* Was it hosted on github or Rpubs?
* Was the server calculation displayed in the html page?
* Here's your opportunity to give this presentation a +1 for being well done. Did they tinker around with the default style? Was the presentation particularly lucid and well organized? In other words, the student made a legitimate try.
* There were no R errors displayed in the presentation.

##My Shiny APP

###Coronavirus disease 2019 (COVID-19) 

Is an infectious disease caused by severe acute respiratory syndrome coronavirus 2 (SARS-CoV-2). The disease was first identified in December 2019 in Wuhan, the capital of China's Hubei province, and has since spread globally, resulting in the ongoing 2019-20 coronavirus pandemic. As of 30 April 2020, more than 3.24 million cases have been reported across 187 countries and territories, resulting in more than 230,000 deaths. More than 1,000,000 people have recovered. 
Resource <https://en.wikipedia.org/wiki/Coronavirus_disease_2019>

###COVID-19 is thought to be able to spread like the cold or flu through:

- Coughing and sneezing, which creates respiratory droplets
- Close personal contact, such as touching or shaking hands
- Touching an object or surface with the virus on it

###Symptoms of COVID-19 include:

- Fever, Coughing, Shortness of breath or difficulty breathing
- Chills or repeated shaking with chills, Muscle pain, Headache
- Sore throat, New loss of taste or smell
- In more severe cases, pneumonia (infection in the lungs)
        
Resource <https://coronavirus.maryland.gov/>

###COVID-19 Statistics in Maryland

- Number of confirmed cases: 21,742
- Number of negative test results: 92,617  
- Number of confirmed deaths: 1,047
- Number of probable deaths: 93
- Currently hospitalized: 1711
- Acute care: 1,121
- Intensive care: 590
- Ever hospitalized: 4,559
- Released from isolation: 1,432

Resource <https://coronavirus.maryland.gov/>

###APP Functionaliy

With this app, you can see de confirm cases arrange by Zip Code
and sort by number of cases in the State of Maryland 

By manipulating a slide bar in the upper rigth position you are 
allow to see every confirme case in depnding de filter that you are appliying 

##Resources

For displaying de APP you can access through the next link 
- <https://mgarci68.shinyapps.io/SAPP_COVID_MD/>

You can find the R code with which the application was built in the next Github repository:
- <https://github.com/mgarci68/ShinyAPP_DDP>

        - ui.R
        - server.R

Finally the RStudio presentation slides is published at:
- <https://rpubs.com/mgarci68/607415>

