module Data_Json
  def orders
    [
      { 
        id: 1,
        amount: 20,
        price: 200,
        name: "GTA"
      },
      { 
        id: 2,
        amount: 30,
        price: 400,
        name: "Book"
      }
    ]
  end

  def new_orders 
    { 
      id: 3,
      amountq: 130,
      price: 400,
      name: "Book"
    }
  end

  def users
    [
      { user_id: 1,
        name: "Alex",
        email: "mail@yahoo.com",
        country: "USA",
        password: 1234
      },
      { user_id: 2,
        name: "Misha",
        email: "misha@yahoo.com",
        country: "EU",
        password: 12345678
      }
     ]
  end

  def all_info
    {
      id: "saladworks_1946",
      shop_id: 2333,
      "store_id": 1946,
      "date_updated": "2017-08-19T10:10:06.198Z",
      "property_id": 1946,
      "name": "East Rutherford",
      "address_1": "30 Route 17 North",
      "city": "East Rutherford",
      "state": ["NJ", "CA", "MI"],
      "zipcode": "07073",
      "country": "US",
      "lat": 40.822927,
      "long": -74.098898,
      "address_container_html": "null",
      "location_url": "null",
      "flags": {
        "delivery": true
      },
      "detected_country": "USA",
      "address_extracted": true
    }
  end
end