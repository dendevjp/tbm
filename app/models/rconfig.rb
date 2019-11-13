class Rconfig < ApplicationRecord
  def self.search(search) #self.でクラスメソッドとしている
    if search # Controllerから渡されたパラメータが!= nilの場合は、titleカラムを部分一致検索
      Rconfig.where(['title LIKE ?', "%#{search}%"])
    else
      Rconfig.all #全て表示。
    end
  end
end
