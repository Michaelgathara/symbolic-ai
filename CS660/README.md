# University Course Scheduler Project
This project acts as the bonus points opportunity for CS660. I took inspiration from my recent troubles of signing up for classes at UAB and thought to make a university course scheduler program on their data. This project is also a perfect example of the types of programs that datalog is really good for

## Overview
The project allows for a programmer to input data based on their school's catalog then input student data of which classes they have taken. The output includes classes of which the student may take given their previous classes. The program also checks for conflicts, this way a student does not get recommended two classes that conflict with each other

## Running
* Make sure you have Souffle installed: https://souffle-lang.github.io/install
* Clone this repo, or download the file
* Run `souffle course.dl`
* An output of `eligibleForCourse.csv` file should output showing you which courses a student is eligible for in upcoming semesters. 

## Program Structure
* Courses: Contains course details including ID, name, and credit hours
* `.decl course(courseId: symbol, name: symbol, credits: number)`
* Prerequisites: Defines prerequisite relationships between courses
* `.decl prerequisite(preCourseId: symbol, courseID: symbol)`
* Students: Student data with completed courses.
* `.decl student(studentId: symbol, completedCourse: symbol)`
* Course Offerings: Details of when courses are offered, including semesters and time slots.
* `.decl courseOffering(courseId: symbol, semester: symbol, timeSlot: symbol)`

## Data
Data is borrowed (I will give it back) from UAB's Computer Science Catalog
* https://catalog.uab.edu/undergraduate/collegeofartsciences/computerscience/#courseinventory

## Future Enhancements
* Taking in input from a csv
* Adding a more useful time slot, start and end time for class
* Adding the ability for students to waitlist