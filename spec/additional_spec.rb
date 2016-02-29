describe "Additional Tests" do
  context "#get_a_number" do
     it "adds newest customer to the end of the queue" do
      queue = []
      get_a_number(queue)
      expect(queue).to eq([1])
      
      get_a_number(queue)
      expect(queue).to eq([1,2])
    end
    
    it "returns the customer's ticket number" do
      queue = []
      ticket_number = get_a_number(queue)
      expect(ticket_number).to eq(1)
    end
  end

  context "#serve_customer" do
    it "knows how to take people off of the queue" do
      queue = []
      expect(get_a_number(queue)).to eq(1)
      expect(get_a_number(queue)).to eq(2)

      expect(serve_customer(queue)).to eq(1)

      expect(queue).to eq([2])
    end
  end

  context "Busy Store" do
    it "can deal with a busy store" do
      queue = []
      get_a_number(queue)
      get_a_number(queue)

      serve_customer(queue)

      get_a_number(queue)
      expect(queue).to eq([2,3])
    end

    it "can deal with a store's customer waves" do
      queue = []
      get_a_number(queue)
      get_a_number(queue)
      serve_customer(queue)
      serve_customer(queue)
      expect(queue).to eq([])
      # nothing for 3 hours

      get_a_number(queue)
      get_a_number(queue)
      expect(queue).to eq([3,4])
    end

    it "can deal with 2 stores" do
      deli1 = []
      get_a_number(deli1)
      get_a_number(deli1)
      serve_customer(deli1)
      expect(deli1).to eq([2])

      deli2 = []
      get_a_number(deli2)
      get_a_number(deli2)
      get_a_number(deli2)
      get_a_number(deli2)
      serve_customer(deli2)
      expect(deli2).to eq([2,3,4])
    end
  end
end