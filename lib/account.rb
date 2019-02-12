require_relative 'transaction'

class Account

  attr_reader :balance, :entries

  def initialize(balance = 0)
    @balance = balance
    @entries = []
  end

  def deposit(credit)
    @balance += credit
    debit = 0
    @entries << Transaction.new(credit, debit, balance)
  end

  def withdraw(debit)
    @balance -= debit
    credit = 0
    @entries << Transaction.new(credit, debit, balance)
  end

  def statement
    header = "date || credit || debit || balance \n"
    body = ""
    @entries.each do |entry|
      body << "#{entry.date} || #{entry.credit} || #{entry.debit} || #{entry.balance}\n"
    end
    puts header + body
  end

end
