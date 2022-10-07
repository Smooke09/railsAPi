class ContactSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :birthdate

  # Associations
  belongs_to :kind 
  has_many :phones
  has_one :address

  meta do 
   { author: "Pedro"}
end

  def attributes(*args)
    h = super(*args)
    # PT_BR h[:birthdate] = (I18n.l(object.birthdate) unless object.birthdate.blank?)
   h[:birthdate] = object.birthdate.to_time.iso8601 unless object.birthdate.blank?
    h
  end

end
