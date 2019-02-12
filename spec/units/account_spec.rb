require 'account'

describe Account do

  it "checks that an instance of account is created" do
    expect(subject).to be_an_instance_of(Account)
  end

  it "Bank account has zero balance upon initialisation" do
    expect(subject.balance).to eq(0)
  end

  it "checks that account has an empty array of transactions when initialised" do
    expect(subject.entries).to be_empty
  end

  it "checks that an amount can be deposited" do
    expect { subject.deposit(100) }.to change { subject.balance }.by(100)
  end

  it "checks that an amount can be withdrawn" do
    expect { subject.withdraw(100) }.to change { subject.balance }.by(-100)
  end

  it 'can print a statement of transactions' do
    account = Account.new(1000)
    account.deposit(1000)
    expected_print = "date || credit || debit || balance \n12/02/2019 || 1000 || 0 || 2000\n"
    expect { account.statement }.to output(expected_print).to_stdout
  end

end
