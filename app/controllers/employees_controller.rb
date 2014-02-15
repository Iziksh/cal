class EemployeesController < ApplicationController
  before_filter :authenticate_employee!

  def index
    @employees = Employee.all
  end

  def show
  end

   def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new params[:employee]
    if @employee.save
      redirect_to @employee, notice: "Congratulations! #{@employee} is now on catz!"
    else
      render 'new'
    end
  end
   def update
    if @employee.update_attributes params[:employee]
      redirect_to @employee, notice: "#{@employee} was saved successfully"
    else
      render 'edit'
    end
  end

end