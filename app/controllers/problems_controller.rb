class ProblemsController < ApplicationController
  def index
    if params[:search]
       @problems = (Problem.search(params[:search])) #+Problem.tagged_with(params[:search])).uniq
    elsif params[:tag]
       @problems = Problem.tagged_with(params[:tag])
    else
  	   @problems = Problem.all.order('created_at DESC')
    end
  end


  def create
  	@problem = Problem.new(problem_params) 
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

  def destroy
    @problem = Problem.find(params[:id])
    @problem.destroy

    redirect_to root_path
  end
  
  def checkanswer    
    @answer=Problem.find(params[:id]).answer.to_s
    answered_correctly = false

    if @answer == params[:answer]
      flash[:success] = "Correct answer!" #update users table with information that this is correct
      #redirect_to @problem
      answered_correctly = true
    else
      flash[:success] = "Your answer of #{params[:answer]} was not correct...the correct answer was #{@answer}" #need some validation to prevent bots from entering information
      answered_correctly = false
    end

    if true
      @metrics = UserMetric.new(:user_id => session[:id], :problem_id => params[:id], :answered_correctly => answered_correctly, :time_accessed => params[:time_accessed], :time_submitted => Time.now)
      @metrics.save
    end
    
    redirect_to problem_path(params[:id]) 
  end

  private

    def problem_params
      params.require(:problem).permit(:title, :body, :answer, :solution, :tag_list, :videolink, :time_accessed, :search)
    end
end
