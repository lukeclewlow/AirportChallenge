#AirportChallenge
================

###Week 1 Challenge - Rspec Testing

##The Brief
==========

Imagine you're writing software to control the flow of planes at an airport. The planes can land and take off provided that the weather is sunny. Occasionally it may be stormy, in which case no planes can land or take off.

Your task is to create a set of classes/modules to make your test suite pass. You will need to use random number generator to set the weather (it is normally sunny but on rare occasions it may be stormy). In your tests, you'll need to use a double to override random weather. Finally, every plane must have a status indicating whether it's flying or landed.

Please create separate files for every class, module and test suite. Commit it to a repo on Github by the end of the day (or on the weekend if you started late).


##My Approach
============

I had spent my previous project using the Chicago Style, which although I enjoyed as a straight forward way to go, have now realized is pretty haphazard!! So I decided to approach this entirely using London style. This meant approaching each class seperately and substituting doubles. I also needed to suspend the element of randomness in my weather for the test suites. I did this using a method stub.

I was very limited on time so there are a couple of things I would have improved on. I think given further time I would have split out my Airport into an AirTrafficControl class and a weather module to further encapsulate them. However, I am very pleased with the functionality of the program as it is when testing in IRB.

