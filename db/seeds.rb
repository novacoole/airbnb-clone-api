require 'csv'
CSV.foreach(Rails.root.join('lib/listings_summary_dec18_reduced.csv'), headers: true) do |row|
  
    Listing.create({
      id: row[0],
      name: row[1],
      neighbourhood: row[2],
      latitude: row[3],
      longitude: row[4],
      room_type: row[5],
      price: row[6],
      minimum_nights: row[7]
    })

end