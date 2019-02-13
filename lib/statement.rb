class Statement

  attr_reader :header

  def initialize
    @header = header
  end

  def header
    @header = "date || credit || debit || balance \n"
  end
end
