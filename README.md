# [Healthy EFF](https://healthy-eff-169.herokuapp.com)
CS169, in partnership with EFF.

## Overview
Reporting system for employees to record healthy activities daily, so management can track and reward employees monthly for a healthy lifestyle.

##### Group Members:
Group 17: Alex Ho, Allan Tang, Ashley Willard, Corinne Schafle, Michelle Lin, Sarah Hernandez

## Development
[![Code Climate](https://codeclimate.com/github/ashleywillard/healthy-eff/badges/gpa.svg)](https://codeclimate.com/github/ashleywillard/healthy-eff)
[![Test Coverage](https://codeclimate.com/github/ashleywillard/healthy-eff/badges/coverage.svg)](https://codeclimate.com/github/ashleywillard/healthy-eff)

##### Tools
* [Pivotal Tracker](https://www.pivotaltracker.com/n/projects/1282358)
* [Travis CI](https://travis-ci.org/ashleywillard/healthy-eff)
* [Code Climate](https://codeclimate.com/github/ashleywillard/healthy-eff)

##### Iteration 0
* [Client Entry Interview](https://youtu.be/ptYHlSCjSQI)
* [Lo-Fi Mockups](https://docs.google.com/presentation/d/1BA3Nlz5kssVkdUxyb5F7JyZ38Xxe5iuyYH-JrsLVQzc/)

## Deadlines

##### Iteration 0
* Schedule customer meeting: Wednesday, 2/11/15
* Initial customer meeting report: Wednesday, 2/18/15
* Lo-fi mockups: Wednesday, 2/25/15
* Section Meeting: Thursday, 2/26/15

##### Iteration 1
* Section Meeting: Thursday, 3/5/15
* First deployment + 2 user stories: Wednesday, 3/11/15
* Features: User Sign-in and allow users to change password, logging current and past healthy activities

##### Iteration 2
* Section Meeting: Thursday, 3/17/15
* Features: Calendar View, Admin workout approval (actually, all admin views), User security (recover password)


##### Iteration 3
* Section Meeting: Thursday, 4/9/15
* Features: PDF generation, UX and UI design, Enable users to both log current day and past days when javaScript is not enabled

##### Iteration 4
* Section Meeting: Thursday, 4/23/15
* Section Presentation: Thursday, 4/30/15
* Features: Javascript-less, GitHub Documentation, Admin management, App security


##### Wrap-Up
* Poster/Demo Fair: Monday, 5/4/15
* Screencasts & Exit Interview: Wednesday, 5/6/15 @ 11:59 PM


## Interactions

#### User Interactions
* Log In Screen Restrictions: Upon logging in for the first time, user is forced to change there password.
* Log Healthy Activity Home Page Restrictions: Activity may be left blank, however it should reflect a healthy activity, time exersized must be greater than 60 minutes, you may only submit one form per day (although you may submit multiple exersizes on this form), User must fill out the captcha to submit.
*Input Past Days Restrictions: User must select a day, however they can add multiple when javaScript is enabled, Activity may be blank, time must again be greater than 60 minutes per each day entered, user must provide a reason for adding days late. 
*User Calendar Page Restrictions: User can view their calendar without javaScript, however this will only allow them to see the past two months.

#### Administrator Interactions
 