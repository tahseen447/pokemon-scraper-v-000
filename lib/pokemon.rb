class Pokemon
  attr_accessor :id, :name , :type, :db

  def initialize(id:id, name:name, type:type, db: db)
    @id = id
    @name = name
    @type = type
    @db = db
  end

  def save()
end
