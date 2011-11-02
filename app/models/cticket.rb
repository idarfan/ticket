# encoding : utf-8
class Cticket < ActiveRecord::Base
  BINGO_ARY = [["頭獎" , 0] , ["二獎",1],["三獎",2],["四獎",3],["五獎",4],["六獎",5]]
  before_save :autocheck
  def autocheck
    self.catbig = self.catsmall = nil
    Bingo.all(:conditions => ["year = ? AND month = ?" ,self.year , self.month]).each do |bingo|
      case bingo.classlevel
      when 0..1
        self.catbig = bingo.classlevel  if bingo.ticketnum == self.cticketnum
      when 2
        (3..8).each do |flag|
          if bingo.ticketnum[(flag * -1)..-1] != self.cticketnum[(flag * -1)..-1]
            break
          else
            self.catbig = bingo.classlevel
            self.catsmall = 8 - flag
=begin
              3 = 5
              4 = 4
              5 = 3
              6 = 2
              7 = 1
              8 = 0
=end
          end
        end
      when 3
        self.catbig = bingo.classlevel  if bingo.ticketnum == self.cticketnum[5..8]
      end
    end
  end
  
end
