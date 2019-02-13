require 'account'

describe "Bank Statement" do
  it "prints the expected bank statement" do
    account = Account.new
    account.deposit(10000)
    # account.withdraw(5000)
    line = "#{Time.now.strftime("%d/%m/%Y")} || 10000 || 0 || 10000\n"
    expect { account.statement }.to output("date || credit || debit || balance \n#{line}").to_stdout
  end
end
