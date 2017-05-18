describe "Additional Tests" do
  context "#get_a_number" do
    it "returns the customer's position on the line" do
      line = []
      position = get_a_number(line)
      expect(position).to eq(1)
    end

    it "adds newest customer to the end of the line" do
      line = []
      get_a_number(line)
      expect(line).to eq([1])
    end
  end

  context "#serve_customer" do
    it "knows how to take people off of the line" do
      line = []
      expect(get_a_number(line)).to eq(1)
      expect(get_a_number(line)).to eq(2)

      expect(serve_customer(line)).to eq(1)

      expect(line).to eq([2])
    end

    it "returns :no_customer if the store is empty" do
      line = []
      expect(serve_customer(line)).to eq(:no_customers)
    end
  end

  context "Busy Store" do
    it "can deal with a busy store" do
      line = []
      get_a_number(line)
      get_a_number(line)

      serve_customer(line)

      get_a_number(line)
      expect(line).to eq([2,3])
    end

    it "can deal with a store's customer waves" do
      line = []
      get_a_number(line)
      get_a_number(line)
      serve_customer(line)
      serve_customer(line)
      expect(line).to eq([])
      # nothing for 3 hours

      get_a_number(line)
      get_a_number(line)
      expect(line).to eq([3,4])
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
