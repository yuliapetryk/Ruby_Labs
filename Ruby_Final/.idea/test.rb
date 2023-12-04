
require 'test/unit'
require_relative 'main'

class ContactTest< Test::Unit::TestCase
    def setup
      @contacs = Contacts.new
      @contacs.add(Contact.new('Stepan', 'Kysil', '123-456-7890'))
      @contacs.add(EmailContact.new('Ivan', 'Kysil', '123-456-7890', "kysil@gmail.com"))
      @contacs.add(SocialMediaContact.new('Petro', 'Kysil', '123-456-7123', "kysilpetro@gmail.com", "kysil123"))
      @contacs.add(SocialMediaContact.new('Ivan', 'Kysil', '123-456-7890', "kysil@gmail.com", "kysil456"))
    end

    def test1_find_by_name
      name='Stepan'
      result =@contacs.find_by_name(name).map{|i| [i.phone]}
      expected_result = [['123-456-7890']]
      assert_equal expected_result, result
    end

    def test2_find_by_email_and_phone
      email='kysilpetro@gmail.com'
      phone='123-456-7123'
      result =@contacs.find_by_email_and_phone(email, phone ).map{|i| [ i.surname]}
      expected_result = [['Kysil']]
      assert_equal expected_result, result
    end

    def test3_sort_by_name
      result = @contacs.sort_by_name().map{|i| [ i.name]}
      expected_result = [["Ivan"], ["Ivan"], ["Petro"], ["Stepan"]]
      assert_equal expected_result, result
    end

    def test4_merge_contacts
      result_contact = @contacs.merge_contacts(1, 3)
      result = [
        result_contact.name,
        result_contact.surname,
        result_contact.phone,
        result_contact.email,
        result_contact.nickname
      ]
      print(result)
      expected_result = ['Ivan', 'Kysil', '123-456-7890', "kysil@gmail.com", "kysil456"]
      assert_equal expected_result, result
    end


end