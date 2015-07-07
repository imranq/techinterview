class ProblemsController < ApplicationController
  def index
  	@problems = Problem.all
  end

  def create
  	@problem = Problem.new(params.require(:problem).permit(:title, :body, :answer)) 
  	if @problem.save
  		redirect_to @problem
  	else
  		render "new"
  	end
  end

  def edit
    @problem = Problem.find(params[:id])
  end

  def update
    @problem = Problem.find(params[:id])
    if @problem.update_attributes(problem_params)
      flash[:success] = "Problem updated"
      redirect_to @problem
    else
      render 'edit'
    end
  end
  
  def new
  	@problem = Problem.new
  end

  def show
    @problem = Problem.find(params[:id])

  end
  
  def checkanswer
    @answer=Problem.find(params[:id]).answer.to_s
    if @answer == params[:answer]
      flash[:success] = "Correct answer!" #update users table with information that this is correct
      #redirect_to @problem
    else
      flash[:success] = "Your answer of #{params[:answer]} was not correct...the correct answer was #{@answer}" #need some validation to prevent bots from entering information
    end
    redirect_to problem_path(params[:id]) 
  end

  private

    def problem_params
      params.require(:problem).permit(:title, :body, :answer)
    end
end
