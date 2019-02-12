require 'account'

describe "Bank Statement" do
  it "prints the expected bank statement" do
    account = Account.new
    account.deposit(10000)
    account.withdraw(5000)
    expect(account.statement).to eq(account.entries)
  end
end
