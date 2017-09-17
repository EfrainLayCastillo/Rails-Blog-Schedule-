class Article < ApplicationRecord
    # La tabla
    #Campos
    #Escribir metodos
    validates :title, presence: true
    validates :body, presence: true
end
