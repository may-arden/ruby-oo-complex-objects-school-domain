# code here!
require 'pry'

# factory of students categorized by grade & name 
class School

    attr_accessor :name, :roster 
    
 
    def initialize(name)
        @name = name 
        @roster = {}
        # binding.pry 
    end 


    def add_student(student_name, grade)
        roster[grade] ||= []
        roster[grade].push(student_name)

    end 

    def grade(grade)
        roster[grade]
    end 

    def sort
        sorted_by_grade_hash = {}
        roster.each do |grade, student_array|
            sorted_by_grade_hash[grade] = student_array.sort 
        end 
        sorted_by_grade_hash
    end 

end

