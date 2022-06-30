class Position < ActiveHash::Base
  self.data = [
    {id: 0, name: '--'}, {id: 1, name: '投'}, {id: 2, name: '捕'}, 
    {id: 3, name: '一'}, {id: 4, name: '二'}, {id: 5, name: '三'}, 
    {id: 6, name: '遊'}, {id: 7, name: '左'}, {id: 8, name: '中'}, 
    {id: 9, name: '右'}
  ]

  include ActiveHash::Associations
  has_many :records

end