require 'account'

describe "Bank Account" do

  account = Account.new

  it "checks that an instance of account is created" do
    expect(account).to be_an_instance_of(Account)
  end
end
