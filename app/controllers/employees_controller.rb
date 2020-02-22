class EmployeesController < ApplicationController
    
    before_action :set_employee, only: [:show, :destroy, :update, :edit]

    def index
        @employees = Employee.all
    end
    
    def new
        @employee = Employee.new
    end 

    def edit

    end

    def create
        #render plain: params[:employee].inspect
        @employee = Employee.new(employee_params)
        if @employee.save
            flash[:notice] = "Employee was successfully created"
            redirect_to employee_path(@employee)
        else 
            render 'new'
        end
    end

    def update
        if @employee.update(employee_params)
            flash[:notice] = "Employee record was successfully updated"
            redirect_to employee_path(@employee)
        else
            render 'edit'
        end
    end

    def show

    end

    def destroy
        @employee.destroy
        flash[:notice] = "Article was successfully deleted"
        redirect_to employees_path
    end

    private

        def set_employee
            @employee = Employee.find(params[:id])
        end

        def employee_params
            params.require(:employee).permit(:fullname, :age, :gender,
                            :marital_status, :state, :lga, :address,
                            :phone_number, :start_date, :email)
        end
end