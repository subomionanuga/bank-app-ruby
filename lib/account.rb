require_relative 'transaction'

class Account

  attr_reader :balance, :entries

  def initialize(balance = 0)
    @balance = balance
    @entries = []
  end

  def deposit(amount)
    @balance += amount
    @entries << Transaction.new(amount, balance)
  end

  def withdraw(amount)
    @balance -= amount
    @entries << Transaction.new(-amount, balance)

  end

end
