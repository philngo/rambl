class PhoneNumbersController < ApplicationController

    def new
    end

    def create
      @user = User.find(params[:phone_number][:user_id])
      @phone_number = @user.phone_numbers.build(number: params[:phone_number][:number], label_id: params[:phone_number][:label_id])
      if @phone_number.save
        flash[:success] = "Saved Phone Number"
        redirect_to @phone_number.user, action: :edit
      else
        flash[:error] = "Couldn't Save Phone Number"
        redirect_to @phone_number.user, action: :edit
      end 
    end

    def edit
    end

    def update
      @phone_number = PhoneNumber.find(params[:id])
      if @phone_number.update_attributes(params[:phone_number])
        flash[:success] = "Updated Phone Number"
        redirect_to @phone_number.user, action: :edit
      else
        flash[:error] = "Couldn't Update Phone Number"
        redirect_to @phone_number.user, action: :edit
      end 
    end

    def show
      @phone_number = PhoneNumber.find(params[:id])
    end

    def destroy
      @phone_number = PhoneNumber.find(params[:id]).destroy
      redirect_to @phone_number.user
    end

end
