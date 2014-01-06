class CustomersController < ApplicationController
  def profile
  end
  def create
    Customer.create(params[:customer])
  end

  def update
    customer = current_account.people.find(params[:id])
    customer.update_attributes!(customer_params)
    redirect_to customer
  end

  private

    def customer_params
      params.require(:customer).permit(:name, :age)
    end
end
