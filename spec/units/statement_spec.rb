require 'statement'

describe Statement do
  it "checks that a new instance of statement is created" do
    expect(subject).to be_an_instance_of(Statement)
  end

  it "expects new instance to be initialised with a header" do
    expect(subject.header).to eq("date || credit || debit || balance \n")
  end
end
