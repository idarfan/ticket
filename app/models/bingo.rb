# encoding : utf-8
class Bingo < ActiveRecord::Base
  MONTH = [["一到二月",0],["三到四月",1],["五到六月",2],["七到八月",3],["九到十月",4],["十一月到十二月",5]]
   CLASSLEVEL = [["特別獎" , 0] , ["特獎",1],["頭獎",2],["增開六獎",3]]
end
