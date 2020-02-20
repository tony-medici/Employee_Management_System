class EmployeesController < ApplicationController
    def new
        @employee = Employee.new
    end

    def create
        #render plain: params[:employee].inspect
        @employee = Employee.new(employee_params)
        @employee.save
        redirect_to employees_show(@employee)
    end

    private

        def employee_params
            params.require(:employee).permit(:fullname, :age, :gender,
                            :marital_status, :state, :lga, :address,
                            :phone_number, :start_date, :email)
        end
end