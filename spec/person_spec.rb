describe Person do
  it "should initialise properly" do
    person = Person.new("Serah", "Farron")
    expect(person.first_name).to eq "Serah"
    expect(person.surname).to eq "Farron"
    expect(person.dob).to eq nil
  end

  it "should give us a person's full name" do
    person = Person.new("Serah", "Farron")
    expect(person.fullname).to eq "Serah Farron"
  end

  it "should allow us to add an email" do
    person = Person.new("Serah", "Farron")
    person.add_email "nora@bodhum.net"
    expect(person.emails).to eq ["nora@bodhum.net"]
  end

  it "should allow us to add a phone number" do
    person = Person.new("Serah", "Farron")
    person.add_phone "5656424"
    expect(person.phone_numbers).to eq ["5656424"]
  end

  it "should allow us to delete an email" do
    person = Person.new("Serah", "Farron")
    person.add_email "nora@bodhum.net"
    person.remove_email 0
    expect(person.emails).to eq []
  end

  it "should allow us to remove a phone number" do
    person = Person.new("Serah", "Farron")
    person.add_phone "5656424"
    person.remove_phone 0
    expect(person.phone_numbers).to eq []
  end

  it "should list the person's details" do
    person = Person.new("Serah", "Farron", "28-05-18BF")
    person.add_phone "5656424"
    person.add_email "nora@bodhum.net"
    expect(person.to_s).to eq "Serah Farron was born on 28-05-18BF.\n
    Their email addresses are: [\"nora@bodhum.net\"].\n
    Their phone numbers are [\"5656424\"]."
  end
end
