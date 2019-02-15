class Statement

  attr_reader :header, :entries

  def initialize
    @header = header
    @entries = []
  end

  def header
    @header = "date || credit || debit || balance \n"
  end

  def body
    body = ""
    @entries.each do |entry|
      body << "#{entry.date} || #{entry.credit} || #{entry.debit} || #{entry.balance}\n"
    end
    puts header + body
  end
end
