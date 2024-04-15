require "pry"
require "time"

class Event
  attr_accessor :title, :start_date
  @@events = []
  def initialize(title, start_date, duration, attendees=[])
    @title = title
    @start_date = Time.parse(start_date)
    @duration = duration.to_i
    @attendees = attendees
    @@events << self
  end
  
  def postpone_24h
    @start_date = @start_date + (3600 * 24)
  end
  
  def self.all
    return @@events
  end
  
  def end_date 
    @end_date = @start_date + (@duration * 60)
  end
  
  def is_past?
    if Time.now > @start_date
      return true
    else 
      return false
    end
  end

  def is_future?
    if Time.now < @start_date
      return true
    else 
      return false
    end
  end 

  def is_soon?
    if Time.now < @start_date && Time.now + (30*60) > @start_date
      return true
    else 
      return false
    end
  end

  def to_s 
    to_s = print "> Titre : #{@title} \n> Date : #{@start_date} min \n> Durée : #{@duration} \n> Invités : #{@attendees}\n"
    return to_s
  end 
end 
  
