describe Transaction do

  entry = Transaction.new(2000, 1000)

  it "checks that a new instance of transaction is created" do
    expect(subject).to be_an_instance_of(Transaction)
  end

  it "checks that time is recorded with transactions" do
    expect(subject.date).to eq(Time.now.strftime("%d/%m/%Y"))
  end

  it "checks that new instances of transaction can be credited" do
    expect(entry.credit).to eq(2000)
  end

  it "checks that new instances of transaction can be debited" do
    expect(entry.debit).to eq(1000)
  end
end
