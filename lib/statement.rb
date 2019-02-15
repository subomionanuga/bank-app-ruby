class Statement

  attr_reader :entries

  HEADER = "date || credit || debit || balance \n"

  def initialize
    @entries = []
  end

  def body
    body = ""
    @entries.each do |entry|
      body << "#{entry.date} || #{entry.credit} || #{entry.debit} || #{entry.balance}\n"
    end
    puts HEADER + body
  end
end
