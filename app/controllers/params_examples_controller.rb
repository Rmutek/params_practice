class ParamsExamplesController < ApplicationController
  def query_params_method
    @my_name = params["name"].upcase
    @message = "Your name doesn't start with A which means you suck"
    if @my_name.start_with?("A")
      @message = "Hey, your name starts with the first letter of the alphabet!"
    end 
    
    @number = params["number"].to_i
    if @number == 14 
      @response = "You win"
    elsif @number < 14 
      @response = "Guess higher"
    elsif @number > 14
      @response = "Guess lower"
    end 
    render "query_params.html.erb"
  end 

  def url_segment_params_method
    @number = params["variable"].to_i
    if @number == 14 
      @response = "You win"
    elsif @number < 14 
      @response = "Guess higher"
    elsif @number > 14
      @response = "Guess lower"
    end 
    render "url_segment_params.html.erb"
  end 

  def form_params_method
    render "form.html.erb"
  end 

  def form_results_method
    @number = params["variable"].to_i
    if @number == 14 
      @response = "You win"
    elsif @number < 14 
      @response = "Guess higher"
    elsif @number > 14
      @response = "Guess lower"
    end 
    render "form_results.html.erb"
  end 

end
