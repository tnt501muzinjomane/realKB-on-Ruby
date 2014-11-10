class DashboardsController < ApplicationController
  before_action :set_dashboard, only: [:show, :edit, :update, :destroy]

  def index
   if params[:search]
    @problem = Problem.search(params[:search]).order("created_at DESC")
     
  else
    @problem = Problem.all.order('created_at DESC')
  end
  end

  def show
    respond_with(@dashboard)
  end

  def new
    @dashboard = Dashboard.new
  end

  def edit
  end

  def create
    @dashboard = Dashboard.new(dashboard_params)
    @dashboard.save
    respond_with(@dashboard)
  end

  def update
    @dashboard.update(dashboard_params)
    respond_with(@dashboard)
  end

  def destroy
    @dashboard.destroy
    respond_to do |format|
      format.html { redirect_to dashboards_url, notice: 'Dashboard was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
    def set_dashboard
      @dashboard = Dashboard.find(params[:id])
    end

    def dashboard_params
      params.require(:dashboard).permit(:name)
    end
end
