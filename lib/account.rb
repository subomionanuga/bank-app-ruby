require_relative 'transaction'
require_relative 'statement'

class Account

  attr_reader :balance, :statement

  def initialize(balance = 0)
    @balance = balance
    @statement = Statement.new
  end

  def deposit(credit)
    @balance += credit
    debit = 0
    @statement.entries << Transaction.new(credit, debit, balance)
  end

  def withdraw(debit)
    @balance -= debit
    credit = 0
    @statement.entries << Transaction.new(credit, debit, balance)
  end

end
