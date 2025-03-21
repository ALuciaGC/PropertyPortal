// Find all properties in London priced below £400,000
db.properties.find({
  location: "London",
  asking_price: { $lt: 400000 }
});

// Find all properties that are currently available
db.properties.find({
  availability: { $gte: new Date() }
});

// Count number of properties grouped by contract type
db.properties.aggregate([
  {
    $group: {
      _id: "$contract_type",
      total: { $sum: 1 }
    }
  }
]);

// Show landlord info for all properties
db.properties.find({}, { landlord: 1, address: 1, _id: 0 });
