describe Account do

  it "checks that an instance of account is created" do
    expect(subject).to be_an_instance_of(Account)
  end

  it "Bank account has zero balance upon initialisation" do
    expect(subject.balance).to eq(0)
  end

  it "initializes with a new instance of the statement class" do
    statement = Statement.new
    allow(subject).to receive(:statement) {statement}
    expect(subject.statement).to eq(statement)
  end

  it "checks that an amount can be deposited" do
    expect { subject.deposit(100) }.to change { subject.balance }.by(100)
  end

  it "checks that an amount can be withdrawn" do
    expect { subject.withdraw(100) }.to change { subject.balance }.by(-100)
  end

end
