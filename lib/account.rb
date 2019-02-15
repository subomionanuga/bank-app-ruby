require_relative 'transaction'

class Account

  attr_reader :balance, :statement

  def initialize(balance = 0)
    @balance = balance
    @statement = Statement.new
    # @entries = []
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

  # def statement
  #   body = ""
  #   @entries.each do |entry|
  #     body << "#{entry.date} || #{entry.credit} || #{entry.debit} || #{entry.balance}\n"
  #   end
  #   puts header + body
  # end
  #
  # private
  #
  # def header
  #   "date || credit || debit || balance \n"
  # end

end
