class CalculationsController < ApplicationController
  def flex_square

    # params = {"number" => "6"}
    @the_number = params["number"].to_f

    render("calculations/flex_square.html.erb")
  end

  def flex_square_root
    @the_number = params["number"].to_f

    render("calculations/flex_square_root.html.erb")
  end

  def flex_interest

    render("calculations/flex_interest.html.erb")
  end

  def flex_random

    render("calculations/flex_random.html.erb")
  end

  def square_form


    render("calculations/square_form.html.erb")
  end

  def square
    # parmams = {"user_number"=>"5"}
    @the_number = params[:user_number].to_f
    render("calculations/square.html.erb")
  end

end
