class StudentsController < ApplicationController

    def index
        students = Student.all
        render json: students
    end

    def grades
        ordered_students = Student.all.order(grade: :desc)
        render json: ordered_students
    end

    def highest_grade
        top_score = Student.all.order(grade: :desc).first
        render json: top_score
    end
end
