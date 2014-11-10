class SolutionsdisplaysController < ApplicationController
  before_action :set_solutionsdisplay, only: [:show, :edit, :update, :destroy]

  def index
   @solution = Solution.where(problem_id: params[:problem_id])
  end

  def show
    @solution = Solution.find(params[:problem_id])
   
  end

  def new
    @solutionsdisplay = Solutionsdisplay.new
    
  end

  def edit
  end

  def create
    @solutionsdisplay = Solutionsdisplay.new(solutionsdisplay_params)
    @solutionsdisplay.save
    respond_with(@solutionsdisplay)
  end

  def update
    @solutionsdisplay.update(solutionsdisplay_params)
    respond_with(@solutionsdisplay)
  end

  def destroy
    @solutionsdisplay.destroy
    respond_with(@solutionsdisplay)
  end

  private
    def set_solutionsdisplay
      @solutionsdisplay = Solutionsdisplay.find(params[:id])
    end

    def solutionsdisplay_params
      params.require(:solutionsdisplay).permit(:name)
    end
end
