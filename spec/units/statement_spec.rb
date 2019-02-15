describe Statement do
  it "checks that a new instance of statement is created" do
    expect(subject).to be_an_instance_of(Statement)
  end

  it "expects new instance to be initialised with a header" do
    expect(subject.header).to eq("date || credit || debit || balance \n")
  end

  # it "expects details of transactions to be printed" do
  #   account = Account.new(1000)
  #   account.deposit(1000)
  #   date = Time.now.strftime("%d/%m/%Y")
  #   line = "date || credit || debit || balance \n#{date} || 1000 || 0 || 2000\n"
  #   expect { subject.body }.to output(line).to_stdout
  # end
end
