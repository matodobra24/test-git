class Product
  include Mongoid::Document
  include Mongoid::Timestamps
    
  field :name, type: String
  field :price, type: BigDecimal
  field :released_on, type: Date
  field :_id, type: String, default: ->{ name.to_s.parameterize }
  
  validates :name, :price, presence: true
  
  embeds_many :reviews
  
  private
    def item_params
      params.require(:product).(:name, :price, :released_on)
    end
end
