class Contact
  attr_accessor :name, :surname, :phone

  def initialize(name, surname, phone)
    @name = name
    @surname = surname
    @phone = phone
  end

  def to_s
    "Name: #{@name} Surname: #{@surname} Phone: #{@phone}"
  end
end

class EmailContact < Contact
  attr_accessor :email

  def initialize(name, surname, phone, email)
    super(name, surname, phone)
    @email = email
  end

  def to_s
    "#{super} Email: #{@email}"
  end
end

class SocialMediaContact < EmailContact
  attr_accessor :nickname

  def initialize(name, surname, phone, email, nickname)
    super(name, surname, phone, email)
    @nickname = nickname
  end

  def to_s
    "#{super} Nickname: #{@nickname}"
  end
end

class Contacts
  attr_accessor :contacts

  def initialize()
    @contacts = []
  end

  def add(contact)
    @contacts.append contact
  end

  def find_by_name(name)
    @contacts.select { |contact| contact.name.start_with?(name) }
  end

  def find_by_email_and_phone(email, phone)
    @contacts.select do |contact|
      if contact.is_a?(EmailContact)
        contact.email == email || contact.phone == phone
      else
        false
      end
    end
  end

  def sort_by_name
    @contacts.sort do |a, b|
      a.name <=> b.name
    end
  end

  def to_s
    @contacts.each { |contact|  puts contact }
  end

  def merge_contacts(index1, index2)
    contact1 = @contacts[index1]
    contact2 = @contacts[index2]

    if contact1 && contact2
      if contact1.name == contact2.name || contact1.surname == contact2.surname
        if contact1.phone == contact2.phone
          merged_contact_phone = "#{contact1.phone}"
        else
          merged_contact_phone =  "#{contact1.phone} & #{contact2.phone}"
        end



        if contact1.is_a?(EmailContact) && contact2.is_a?(EmailContact)
          merged_contact_email = "#{contact1.email} & #{contact2.email}"
        end

        if contact1.is_a?(EmailContact) || contact2.is_a?(EmailContact)
          if contact1.is_a?(EmailContact)
            merged_contact_email = "#{contact1.email}"
          else
            merged_contact_email = "#{contact2.email}"
          end
        end

        if contact1.is_a?(SocialMediaContact) && contact2.is_a?(SocialMediaContact)
            merged_contact_nickname = "#{contact1.nickname} & #{contact2.nickname}"
        end

        if contact1.is_a?(SocialMediaContact) || contact2.is_a?(SocialMediaContact)
          if contact1.is_a?(SocialMediaContact)
            merged_contact_nickname = "#{contact1.nickname}"
          else
            merged_contact_nickname = "#{contact2.nickname}"
          end
        end

        if( merged_contact_email != "")
          if( merged_contact_nickname != "")
            merged_contact = SocialMediaContact.new(
              "#{contact1.name}",
              "#{contact1.surname}",
              merged_contact_phone,
              merged_contact_email,
              merged_contact_nickname
            )
          else
            merged_contact = EmailContact.new(
              "#{contact1.name}",
              "#{contact1.surname}",
              merged_contact_phone,
              merged_contact_email
            )
          end
        else
          merged_contact = Contact.new(
            "#{contact1.name}",
            "#{contact1.surname}",
            merged_contact_phone
          )
          end

        @contacts.append(merged_contact)
        @contacts.delete(contact1)
        @contacts.delete(contact2)
        merged_contact
      end

      end
  end
  def merge_non_empty(value1, value2)
    value1.to_s.empty? ? value2 : value1
  end
end
