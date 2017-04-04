#!/usr/bin/env ruby

require 'forwardable'

class Anakart
  def start
    puts 'Anakart başlatılıyor...'
  end
  def stop
    puts 'Anakart elektriği kesiliyor...'
  end
end

class Bilgisayar
  extend Forwardable
  def_delegators :@mb, :start, :stop
  def initialize
    @mb = Anakart.new
  end
end

pc = Bilgisayar.new
pc.start
