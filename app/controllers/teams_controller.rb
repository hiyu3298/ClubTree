class TeamsController < ApplicationController
  def index
    @teams = Team.all
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(team_params)
    if @team.save
      redirect_to team_path(@team)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  private

  def team_params
    params.require(:team).permit(:name, :genre_id, :image_id, :introduction, :admission_fee, :membership_fee, :activity_day, :activity_time, :activity_status, :place)
  end

end
