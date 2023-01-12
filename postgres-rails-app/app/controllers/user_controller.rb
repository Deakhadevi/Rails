class UserController < ApplicationController

  def index
    render json: User.all
  end
  def show
    v = User.find(params[:id])
    render json: v
  end
  def create
    v = !params[:name].empty?
    if (v)
      p=User.create(
      'name': params[:name],
      'email': params[:email],
      'address': params[:address],
      'hashed_pass': params[:hashed_pass],
      'phone_number': params[:phone_number],
      'role_id': params[:role_id],
      'reset_password_sent_at': params[:reset_password_sent_at],
      'reset_pass': params[:reset_pass],
      'remember_created_at': params[:remember_created_at]
        )
      puts p
      render json: "Data Added"
     else
      render json: "Data not added"
    end
  end
  def update
    p=User.find(params[:id].to_i)
    p.update(
      'name': params[:name],
      'email': params[:email],
      'address': params[:address],
      'hashed_pass': params[:hashed_pass],
      'phone_number': params[:phone_number],
      'role_id': params[:role_id],
      'reset_password_sent_at': params[:reset_password_sent_at],
      'reset_pass': params[:reset_pass],
      'remember_created_at': params[:remember_created_at]

    )
    render json: "Data Updated"
   end

   def destroy
    p=User.find(params[:id].to_i)
    p.destroy
    render json: "Data Deleted"
  end

end
