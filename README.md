# Reunion

## Preparation

1. Fork this repository.
1. Clone your new repository to your local machine.
1. Run `bundle` from the command line.
1. Run `rake` from the command line.

## Tasks

We're developing a small application to split expenses after a group of friends get together for a reunion. This will track how much each person spent on a particular activity, how much each person owes across all activities, and ultimately print out a summary of how much each person owes or is owed.

Use tests to drive your development.

### Iteration 1: Creating Activities

Add to the existing Activity class so that it supports the following functionality.

* An Activity has a name, such as 'hiking'  
* An Activity has participants
* participants are represented with a hash and have a name and an amount they've paid for that activity  
* You can add participants to an Activity
* You can evaluate the total cost of an activity   

### Iteration 2: Activity Calculations

Add to the Activity class so that it supports the following functionality. Note, it is assumed that the cost of each activity is split evenly between all participants.

* You can split the cost of an activity
* You can evaluate out how much each person is owed/owes
  * If a participant paid less than their fair share they owe a positive amount.
  * If a participant paid more than their fair share they owe a negative amount (meaning they are owed money).  


### Iteration 3: Creating Reunions

Add to the existing Reunion class so that it supports the following functionality.

* A Reunion has a location
* A Reunion has Activities  
* You can add Activities to a Reunion

### Iteration 4: Reunion Calculations

Add to the existing Reunion class so that it supports the following functionality.

* You can evaluate the total cost of a Reunion
* You can create a total breakdown of the Reunion which figures out who owes/is owed how much
  * Consider all of the Activities
  * If a participant paid less than their fair share they owe a positive amount.
  * If a participant paid more than their fair share they owe a negative amount (meaning they are owed money).
* You can print a summary of total owed amounts per person


### Iteration 5: ERB

Research ERB. Create a template for a webpage using HTML and ERB that will display important details of a Reunion. Create a runner file to create a Reunion with Activities, and use the template to generate an HTML page that you can open in your browser.
