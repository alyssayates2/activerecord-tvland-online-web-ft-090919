class AddCatchphraseToCharacters 
  def change 
    add_column :characters, :catchphrase, :string
  end 
end 