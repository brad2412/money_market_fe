class Market 
  attr_reader :id,
              :name,
              :street,
              :city,
              :state,
              :zip

  def initialize(data)
    @id = data[:id]
    @name = data[:attributes][:name]
    @street = data[:attributes][:street] || "Street"
    @city = data[:attributes][:city]&.squeeze(" ") || "City"
    @state = data[:attributes][:state] || "State"
    @zip = data[:attributes][:zip] || "Zip"
  end

  def vendors
    @vendors ||= VendorsFacade.new.vendors_for(@id)
  end
end
