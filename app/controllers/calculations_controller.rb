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
    @basis_points = params["basis_points"].to_f
    @number_of_years = params["number_of_years"].to_f
    @present_value = params["present_value"].to_f

    @interest_rate = (@basis_points / 100)
    rate = @interest_rate / 100 / 12
    monthly = @number_of_years * 12

    @payment = (rate * @present_value) / (1 - (1 + rate) ** (- monthly))

    render("calculations/flex_interest.html.erb")
  end

  def flex_random

    @min = params["min"].to_i
    @max = params["max"].to_i

    @random = rand(@min..@max)

    render("calculations/flex_random.html.erb")
  end

  def square_form


    render("calculations/square_form.html.erb")
  end

  def square
    # params = {"user_number"=>"5"}
    @the_number = params[:user_number].to_f
    render("calculations/square_results.html.erb")
  end

end
