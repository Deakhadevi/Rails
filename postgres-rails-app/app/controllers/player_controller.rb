class PlayerController < ApplicationController
  #skip_before_action :verify_authenticity_token

  def index
    render json: Player.all
  end
  def show
    v = Player.find(params[:id])
    render json: v
  end
  def create
    v = !params[:playername].empty?
    if (v)
      p=Property.create(
        'playername': params[:playername],
        'teamname': params[:teamname],
        'roles': params[:roles],
        'totalruns': params[:totalruns],
        'totalwickets': params[:totalwickets],
        'internatonalranking': params[:internationalranking],
        'country': params[:country],
        )
      puts p
      render json: "Data Added"
     else
      render json: "Data not added"
    end
  end
  def update
    p=Player.find(params[:id].to_i)
    p.update(
      'playername': params[:playername],
      'teamname': params[:teamname],
      'roles': params[:roles],
      'totalruns': params[:totalruns],
      'totalwickets': params[:totalwickets],
      'internatonalranking': params[:internationalranking],
      'country': params[:country],

    )
    render json: "Data Updated"
   end

   def destroy
    p=Player.find(params[:id].to_i)
    p.destroy
    render json: "Data Deleted"
  end

end
