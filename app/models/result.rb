class Result < ActiveHash::Base
  self.data = [
    {id: 0, name: '--'}, {id: 1, name: 'ゴロ'}, {id: 2, name: 'フライ'}, 
    {id: 3, name: 'ライナー'}, {id: 4, name: 'ファールフライ'}, 
    {id: 5, name: 'エラー'}, {id: 6, name: 'フィルダースチョイス'}, 
    {id: 7, name: 'ヒット'}, {id: 8, name: '二塁打'}, {id: 9, name: '三塁打'}, 
    {id: 10, name: 'ホームラン'}, {id: 11, name: '犠打/犠飛'}, 
    {id: 12, name: '四球'}, {id: 13, name: '死球'}, {id: 14, name: '三振'}, 
    {id: 15, name: '振り逃げ'}, {id: 16, name: '併殺打'}
   ]

   include ActiveHash::Associations
   has_many :records

end