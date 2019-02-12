require_relative 'transaction'

class Account

  attr_reader :balance, :entries

  def initialize(balance = 0)
    @balance = balance
    @entries = []
  end

  def deposit(credit)
    @balance += credit
    @entries << Transaction.new(credit, balance)
  end

  def withdraw(debit)
    @balance -= debit
    credit = 0
    @entries << Transaction.new(credit, debit, balance)
  end

  def statement
    puts "date || credit || debit || balance \n"
    @entries.each do |entry|
      puts "#{entry.date} || #{entry.credit} || #{entry.debit} || #{entry.balance}"
    end
    # return entries
  end

end
