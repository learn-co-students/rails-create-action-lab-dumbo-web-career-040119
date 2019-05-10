class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end



         def create
          student = student_params
          @student = Student.create(student)
            if @student.valid?
              redirect_to @student
            else
              render "new"
            end
          end


        def edit
          @student = Student.find(params[:id])
        end

        def update
          @student = Student.find(params[:id])
          @student.update(student_params)
          @student.save
          redirect_to @student
        end


        def destroy
          Student.find(params[:id]).destroy
          redirect_to students_path
        end


        private

        def student_params
          params.require(:student).permit(:first_name, :last_name)
        end


end
