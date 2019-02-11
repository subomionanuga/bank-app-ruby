require 'account'

describe "Bank Account" do
  it "checks that an instance of account is created" do
    expect(account).to be_an_instance_of(Account)
  end
end
