class PropertyController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    render json: Property.all
end
def show
    v = Property.find(params[:id])
    render json: v
end
def create
        v = !params[:propertyname].empty?
        if (v)
          p=Property.create(
            'propertyname': params[:propertyname],
            'city': params[:city],
            'country': params[:country],
            'address': params[:address],
            'typeofresidence': params[:typeofresidence],
            'priceperday': params[:priceperday],
            'description': params[:description],
            'rules': params[:rules],
            'rating': params[:rating]
            )
          puts p
          render json: "Data Added"
         else
          render json: "Data not added"
        end
end
def update
   p=Property.find(params[:id].to_i)
   p.update(
    'propertyname': params[:propertyname],
    'city': params[:city],
    'country': params[:country],
    'address': params[:address],
    'typeofresidence': params[:typeofresidence],
    'priceperday': params[:priceperday],
    'description': params[:description],
    'rules': params[:rules],
    'rating': params[:rating]

   )
   render json: "Data Updated"
end

end

