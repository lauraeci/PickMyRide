class Makes
  include Her::Model

  has_many :models

  scope :Pickmyride, -> { where(api_key: 'paqqtuhsazun2gm32mg976tr', fmt: 'json') }
  scope :new, -> { where(state: 'new' ) }
end
