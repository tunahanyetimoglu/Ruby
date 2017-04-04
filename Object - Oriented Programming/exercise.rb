#!/usr/bin/env ruby
class Araba
   @@motor = 'Dizel'
  attr_reader :marka, :model, :fiyat
  def initialize(marka,model,fiyat)
    @marka=marka
    @model=model
    @fiyat=fiyat
  end
  def >(other)
    @fiyat>other.fiyat
  end
  def to_s
     "#{model} model #{marka} marka araç"
  end
  def motor
     @@motor
  end
  def motor=(value)
     @@motor =value
  end
  def nesne
    self.marka
  end
  def self.sinif
    self.sinif
  end
end

murat131 = Araba.new('Fiat','1990',4000)
porshe   = Araba.new('Porshe','2017',4000000)

puts  murat131.motor
puts  porshe.motor
murat131.motor = 'Benzinli'
puts murat131.motor
puts porshe.motor
puts porshe.class
puts murat131.nesne
puts Araba.sinif
