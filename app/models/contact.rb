class Contact < ApplicationRecord
    belongs_to :kind

    def birthdate_br
        I18n.l(self.birthdate) unless self.birthdate.blank?
    end

    def to_br
        {
            name: self.name,
            email: self.email,
            birthdate: (I18n.l(self.birthdate) unless self.birthdate.blank?)
        }
    end
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
