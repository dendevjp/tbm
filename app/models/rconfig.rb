class Rconfig < ApplicationRecord

  validates :maincode,  presence: true, length: { maximum: 3 }, numericality: { only_integer: true,greater_than: 0, less_than: 999}

  validates :subcode,  presence: true, length: { maximum: 3 }, numericality: { only_integer: true,greater_than: 0, less_than: 999}
  def self.search(search) #self.でクラスメソッドとしている


    if search # Controllerから渡されたパラメータが!= nilの場合は、titleカラムを部分一致検索
      Rconfig.where(['title LIKE ?', "%#{search}%"])
    else
      Rconfig.all #全て表示。
    end
  end
end
