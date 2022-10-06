class Contact < ApplicationRecord
    #Associations
    belongs_to :kind
    has_many :phones
    has_one :adress
    
    accepts_nested_attributes_for :phones, allow_destroy: true
    accepts_nested_attributes_for :adress, update_only: true

    def as_json(options={})
    h = super(options)
    h[:birthdate] = (I18n.l(self.birthdate) unless self.birthdate.blank?)
    h
end


    # def birthdate_br
    #     I18n.l(self.birthdate) unless self.birthdate.blank?
    # end

    # def to_br
    #     {
    #         name: self.name,
    #         email: self.email,
    #         birthdate: (I18n.l(self.birthdate) unless self.birthdate.blank?)
    #     }
    # end
    # belongs_to :kind, optional: true

    # def author
    #     "Pedro lucas"
    # end

    # def kind_description
    #     self.kind.description
    # end

    # def as_json(options = {})
    #     super(
    #         root: true,
    #         methods: [:kind_description, :author,], 

    #     )
    # end

    # def hello 
    #     I18n.t('hello')
    # end
end
