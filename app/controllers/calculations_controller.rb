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
    @the_number = params[:user_number].to_f
    render("calculations/square_results.html.erb")
  end

  def square_root_form
    render("calculations/square_root_form.html.erb")
  end

  def square_root
    @the_number = params[:user_number].to_f
    render("calculations/square_root_results.html.erb")
  end

  def payment
    @apr = params[:apr].to_f
    @number_of_years = params[:number_of_years].to_f
    @present_value = params[:present_value].to_f

    rate = (@apr / 100) / 12
    monthly = @number_of_years * 12

    @payment = (rate * @present_value) / (1 - (1 + rate) ** (- monthly))
    render("calculations/payment_results.html.erb")
  end

  def payment_form


    render("calculations/payment_form.html.erb")
  end

  def random
    @min = params[:min].to_f
    @max = params[:max].to_f

    @random = rand(@min..@max)
    render("calculations/random_results.html.erb")
  end

  def random_form

    render("calculations/random_form.html.erb")
  end

end
