class Api::V1::StudentsController < ApplicationController

	before_filter :edit, only: [:update, :destroy]
	def index
		
		@students = Student.all
		render json: {students: @students}
	end
	def new
 		@student = Student.new
	end
	def create
	  @student = Student.new(student_params)
	 
	  if @student.save
	    render json: @student
	  else
	  	render json: @student.errors
	  end
	end

  	def update

	    if @student.update(student_params)
	      render json: @student
	    else
	      render json: @student.errors
	    end
	  end

	def destroy
	  
	    @student.destroy
	 
	    render json: "Student Deleted"
	 end
	 
	private
	  def student_params
	    params.require(:student).permit(:name, :roll_no, :maths_marks, :science_marks, :social_marks, :english_marks, :kannada_marks)
	  end
	  	def edit
    	@student = Student.find(params[:id])
  	end
end