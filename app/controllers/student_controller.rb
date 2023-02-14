class StudentController < ApplicationController
  def new
    if request.post?
      @student= Student.new(student_params)
      if @student.save
        flash[:notice]= "Student details added"
        redirect_to student_show_url(@student)
      else
        render :action=> :new
      end
    end
  end

  def show
    @student = Student.find(params[:id])
  end

  private
  def student_params
    params.permit(:name, :age, :mark1, :mark2, :mark3, :mark4, :mark5)
  end
end
