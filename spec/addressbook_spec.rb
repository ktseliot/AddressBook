describe AddressBook do

  let(:person1) { Person.new("Serah", "Farron", "1 Jan 1990") }
  let(:person2) { Person.new("Claire", "Farron", "22 March 1987") }

  it "should initialise properly" do
    book = AddressBook.new
    expect(book.address_book).to eq []
  end

  it "should allow adding of peaople" do
    book.add person1
    book.add person2
    expect(book.address_book).to eq []
  end
end
