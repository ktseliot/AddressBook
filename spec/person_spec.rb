describe Person do
  it "should initialise properly" do
    person = Person.new("Serah", "Farron")
    expect(person.first_name).to eq "Serah"
    expect(person.surname).to eq "Farron"
    expect(person.dob).to eq nil
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
end
