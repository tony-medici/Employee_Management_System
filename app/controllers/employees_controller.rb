class EmployeesController < ApplicationController
    def index
        @employees = Employee.all
    end
    
    def new
        @employee = Employee.new
    end 

    def edit
        @employee = Employee.find(params[:id])
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
        @employee = Employee.find(params[:id])
        if @employee.update(employee_params)
            flash[:notice] = "Employee record was successfully updated"
            redirect_to employee_path(@employee)
        else
            render 'edit'
        end
    end

    def show
        @employee = Employee.find(params[:id])
    end

    def destroy
        @employee = Employee.find(params[:id])
        @employee.destroy
        flash[:notice] = "Article was successfully deleted"
        redirect_to employees_path
    end

    private

        def employee_params
            params.require(:employee).permit(:fullname, :age, :gender,
                            :marital_status, :state, :lga, :address,
                            :phone_number, :start_date, :email)
        end
end