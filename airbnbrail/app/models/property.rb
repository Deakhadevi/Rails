class Property < ApplicationRecord

end
class Property < ApplicationRecord
   validates :propertyname, presence: true, length: {minimum: 2,maximum: 200}
   validates :country,presence: true , length: {minimum: 3, maximum:200}
   validates :address , presence: true,length:{minimum: 1, maximum:200}
   validates :typeofresidence , presence: true,length:{minimum: 1, maximum:200}
   validates :priceperday, presence: true,length:{minimum: 1,maximum:10}
   validates :rating, presence: true,length:{minimum: 1, maximum:6}
end

