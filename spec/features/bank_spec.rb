require 'account'

describe "Bank Balance" do
    it "Bank account has zero balance upon initialisation" do
      account = Account.new
      expect(account.balance).to eq(0)
  end
end
