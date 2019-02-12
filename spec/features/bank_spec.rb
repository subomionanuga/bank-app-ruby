require 'account'

describe "Bank Statement" do
  it "prints the expected bank statement" do
    account = Account.new
    account.deposit(10000)
    account.withdraw(5000)
    expect { account.statement }.to output("date || credit || debit || balance \n12/02/2019 || 10000 || 0 || 10000\n12/02/2019 || 0 || 5000 || 5000\n").to_stdout
  end
end
