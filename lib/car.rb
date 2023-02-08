class Car
  attr_reader :monthly_payment, :loan_length, :make, :model, :color
  def initialize(make_model, monthly_payment, loan_length)

    @make_model = make_model
    @monthly_payment = monthly_payment
    @loan_length = loan_length
    @make = make_model.split[0].to_s
    @model = make_model.split[1].to_s
    @color = nil
  end

  def total_cost
    @loan_length * @monthly_payment
  end

  def paint!(color)
    @color = color
  end
end