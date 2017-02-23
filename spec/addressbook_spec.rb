describe AddressBook do
  it "should initialise properly" do
    book = AddressBook.new
    expect(book.address_book).to eq []
  end
end
