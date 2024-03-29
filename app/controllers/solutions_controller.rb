class SolutionsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_solution, only: [:show, :edit, :update, :destroy]

  # GET /solutions
  # GET /solutions.json
  def index
    if params[:search]
    @solution = Solution.search(params[:search]).order("created_at DESC")
     
  else
    @solution = Solution.all.order('created_at DESC')
  end
    #@solutions = Solution.all
  end

  # GET /solutions/1
  # GET /solutions/1.json
  def show
  
  end

  # GET /solutions/new
  def new
    @problems = Problem.all
    @solution = Solution.new
  end

  # GET /solutions/1/edit
  def edit
   @problems = Problem.all
  
  end

  # POST /solutions
  # POST /solutions.json
  def create
    @solution = Solution.new(solution_params)

    respond_to do |format|
      if @solution.save
        format.html { redirect_to @solution, notice: 'Solution was successfully created.' }
        format.json { render :show, status: :created, location: @solution }
      else
        format.html { render :new }
        format.json { render json: @solution.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /solutions/1
  # PATCH/PUT /solutions/1.json
  def update
    respond_to do |format|
      if @solution.update(solution_params)
        format.html { redirect_to @solution, notice: 'Solution was successfully updated.' }
        format.json { render :show, status: :ok, location: @solution }
      else
        format.html { render :edit }
        format.json { render json: @solution.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /solutions/1
  # DELETE /solutions/1.json
  def destroy
    @solution.destroy
    respond_to do |format|
      format.html { redirect_to solutions_url, notice: 'Solution was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_solution
      @solution = Solution.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def solution_params
      params.require(:solution).permit(:solution1, :image1, :solution2, :image2, :solution3, :image3, :solution4, :image4, :solution5, :image5, :problem_id, :user_id)
    end
end
