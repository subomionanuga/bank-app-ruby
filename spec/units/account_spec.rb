require 'account'

describe "Bank Account" do

  account = Account.new

  it "checks that an instance of account is created" do
    expect(account).to be_an_instance_of(Account)
  end

  it "checks that an amount can be deposited" do
    expect{ account.deposit(100) }.to change{ account.balance }.by(100)
  end

  it "checks that an amount can be withdrawn" do
    expect{ account.withdraw(100) }.to change{ account.balance }.by(100)
  end

end
