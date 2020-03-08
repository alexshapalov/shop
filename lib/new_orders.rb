module NewOrders
  def orders
    [
      { 
        id: 1,
        amount: 30,
        price: 200,
        name: "GTA",
        confirmed: true,
        due_date: 2020-01-12
      },
      { 
        id: 2,
        amount: 130,
        price: 400,
        name: "Book",
        confirmed: true,
        due_date: 2020-01-22
      },
      { 
        id: 3,
        amount: 230,
        price: 400,
        name: "Book",
        confirmed: false,
        due_date: 2020-02-22
      }
    ]
  end
end