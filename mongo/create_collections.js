// Create collection for properties
db.createCollection("properties");

// Insert sample property document
db.properties.insertOne({
  pid: "P001",
  registered_date: ISODate("2023-01-01T00:00:00Z"),
  landlord: {
    ccode: "C01",
    name: "Alice Johnson",
    contact: "0755555555"
  },
  address: "12 Regent St, London",
  location: "London",
  description: "Apartment",
  details: "2-bed apartment with balcony",
  asking_price: 350000,
  type: "Attached",
  no_rooms: 2,
  availability: ISODate("2023-02-01T00:00:00Z"),
  contract_type: "Sale",
  status: "Sold"
});
