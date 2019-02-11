require 'transaction'

describe "Transactions" do
   entry = Transaction.new

   it "checks that a new instance of transaction is created" do
     expect(entry).to be_an_instance_of(Transaction)
   end

   it "checks that time is recorded with transactions" do
     allow(entry).to receive(:date) {11/02/2019}
     expect(entry.date).to eq(11/02/2019)
   end
end
