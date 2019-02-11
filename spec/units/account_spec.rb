require 'account'

describe "Bank Account" do

  account = Account.new

  it "checks that an instance of account is created" do
    expect(account).to be_an_instance_of(Account)
  end

  it "Bank account has zero balance upon initialisation" do
    expect(account.balance).to eq(0)
  end

  it "checks that account has an empty array of transactions when initialised" do
    expect(account.entries).to be_empty
  end

  it "checks that an amount can be deposited" do
    expect { account.deposit(100) }.to change { account.balance }.by(100)
  end

  it "checks that an amount can be withdrawn" do
    expect { account.withdraw(100) }.to change { account.balance }.by(-100)
  end

end
