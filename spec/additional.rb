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


# ----  My added spec ----- #
  context "Reset Ticket Roll" do
    it "resets ticket roll" do
      queue = [96,97,98,99]
      roll = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99]
      get_a_number(queue, roll)
      get_a_number(queue, roll)

      expect(queue).to eq([96,97,98,99,1, 2])
      expect(roll).to eq([1, 2])

      serve_customer(queue)
      serve_customer(queue)
      serve_customer(queue)
      expect(queue).to eq([99,1, 2])
    end
  end
end








