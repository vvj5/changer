class Changer
  def self.run(amt)
   coins = []
   [25, 10, 5, 1].each do |number|
      if amt >= number
        i = (amt / number).floor
        i.times { coins << [number] }
        value = i * number
        amt -= value
      end
    end
   coins
  end #run method
end
