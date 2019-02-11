require 'transaction'

describe "Transactions" do
   entry = Transaction.new(balance = 1000)

   it "checks that a new instance of transaction is created" do
     expect(entry).to be_an_instance_of(Transaction)
   end

   it "checks that time is recorded with transactions" do
     allow(entry).to receive(:date) { "11/02/2019" }
     expect(entry.date).to eq("11/02/2019")
   end

   it "checks that new instances of transaction have amounts" do
     allow(entry).to receive(:credit) { 1000 }
     expect(entry.credit).to eq(1000)
   end

   it "checks that the current balance is updated with transactions" do
     allow(entry).to receive(:balance) { 1000 }
     expect(entry.balance).to eq(1000)
   end
end
