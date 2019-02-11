class Transaction

  attr_reader :date, :amount, :balance

  def initialize(amount = 0, balance)
    @date = Time.now.strftime("%d/%m/%Y")
    @amount = amount
    @balance = balance
  end

end
