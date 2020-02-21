class EmployeesController < ApplicationController
    def new
        @employee = Employee.new
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

    def show
        @employee = Employee.find(params[:id])
    end

    private

        def employee_params
            params.require(:employee).permit(:fullname, :age, :gender,
                            :marital_status, :state, :lga, :address,
                            :phone_number, :start_date, :email)
        end
end