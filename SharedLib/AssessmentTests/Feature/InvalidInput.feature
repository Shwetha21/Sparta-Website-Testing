﻿Feature: InvalidInput
	In order to check the assessment page
	As a Tester
	I want to be able to test the page for all invalid data


#@ignore("Dint get the Web element to find the prompt message")
#Scenario: valid candidate name but invalid recruiter email id
#	Given I am in assessment page
#	And I have selected the <test> to send
#	And I have entered  valid candidate name
#	And I have invalid the Candidate email 
#	And I have valid the Recruiter email <Recruiter email> 
#	When I press the submit button
#	Then warning popup message should appear <Message>
#
#	Examples: 
#		| test   | Recruiter email | Message                                                             |
#		| java   | ghg             | please include an '@' in the email address. 'ghg' is missing an '@' |
#		| csharp | ghg@            | please enter a following '@'. 'ghg@' is incomplete                  |

@Assessment
Scenario: Invalid Candidate name
	Given I am in assessment page
	And I have selected the <test> to send
	And I have entered Invalid candidate name < name>
	And I have valid the Candidate email 
	And I have valid the Recruiter email 
	And None of the text boxes are in focus
	When I press the submit button
	Then I shouldn't get a message Assessment Sent
	Examples: 
		| test   |  name                          |
		| java   | testproject.dummy456@gmail.com |
		| csharp | 123456                         |
		| csharp | £$%^&*                         |
		| python | +_+~}                          |

@Assessment
Scenario: Matching Candidate and Recruiter Email
	Given I am in assessment page
	And I have selected the <test> to send
	And I have entered  valid candidate name
	And I have Invalid the Candidate email <Candidate email> 
	And I have Invalid the Recruiter email <Recruiter email>
	And None of the text boxes are in focus
	When I press the submit button
	Then I shouldn't get a message Assessment Sent
	Examples: 
		| test  | Candidate email                | Recruiter email                |
		| java  | testproject.dummy456@gmail.com | testproject.dummy456@gmail.com |
