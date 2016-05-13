describe "Additional Tests" do
  context "#get_a_number" do
     it "adds newest customer to the end of the queue" do
      queue = []
      roll = []
      get_a_number(queue, roll)
      expect(queue).to eq([1])
      
      get_a_number(queue, roll)
      expect(queue).to eq([1,2])
    end
    
    it "returns the customer's ticket number" do
      queue = []
      roll = []
      bob = get_a_number(queue, roll)
      expect(bob).to eq(1)
      
      alice = get_a_number(queue, roll)
      expect(alice).to eq(2)
    end
  end

  context "#serve_customer" do
    it "knows how to take people off of the queue" do
      queue = []
      roll = []
      get_a_number(queue, roll)
      get_a_number(queue, roll)

      expect(serve_customer(queue)).to eq(1)

      expect(queue).to eq([2])
    end
  end

  context "Busy Store" do
    it "can deal with a busy store" do
      queue = []
      roll = []
      get_a_number(queue, roll)
      get_a_number(queue, roll)

      serve_customer(queue)

      get_a_number(queue, roll)
      expect(queue).to eq([2,3])
    end

    it "can deal with a store's customer waves" do
      queue = []
      roll = []
      get_a_number(queue, roll)
      get_a_number(queue, roll)
      serve_customer(queue)
      serve_customer(queue)
      expect(queue).to eq([])
      # nothing for 3 hours

      get_a_number(queue, roll)
      get_a_number(queue, roll)
      expect(queue).to eq([3,4])
    end

    it "can deal with 2 stores" do
      deli1 = []
      roll1 = []
      get_a_number(deli1, roll1)
      get_a_number(deli1, roll1)
      serve_customer(deli1)
      expect(deli1).to eq([2])

      deli2 = []
      roll2 = []
      get_a_number(deli2, roll2)
      get_a_number(deli2, roll2)
      get_a_number(deli2, roll2)
      get_a_number(deli2, roll2)
      serve_customer(deli2)
      expect(deli2).to eq([2,3,4])
    end
  end
end