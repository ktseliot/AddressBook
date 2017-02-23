<!-- begin OBJECT-ORIENTED PROGRAMMING

Question 2. Add a print_details method that prints out the details of the
person, and then lists their emails and phone numbers on separate lines. You
should use the Array method each. The stftimeDate method might be useful. You
should only try to write tests for this once you have finished everything else.
Here’s a suggested output format:
Joe Bloggs
----------

Date of Birth: 01 January 1990

Email Addresses:
-joe@foo.com
-joe.bloggs@work.com

Phone Numbers:
-02012345678

Question 3. Add a FamilyMember class that inherits from Person and has an
additional relationship instance variable.Question 4. Write an AddressBook 
class that implements the following interface. Note: It is very difficult to
write tests for the list()method, since it prints stuff to STDOUT, rather than
returning it.

person1 = Person.new("joe", "blogs", "1 Jan 1990")
person2 = Person.new("andy", "nother", "2 Jan 1995")
book = AddressBook.new
book.add person1
book.add person2
book.list # Should print this to the command line:

Address Book
------------
Entry 1: Joe Bloggs
Entry 2: Andy Nother

Bonus points:•Raise an error if the add method is passed anything but a Person
or FamilyMember object -->
