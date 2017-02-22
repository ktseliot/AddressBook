describe Person do
  it "should initialise properly" do
    person = Person.new("Serah", "Farron")
    expect(person.first_name).to eq "Serah"
    expect(person.surname).to eq "Farron"
    expect(person.dob).to eq nil
  end
end
