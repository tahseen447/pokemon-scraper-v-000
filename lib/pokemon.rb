class Pokemon
  attr_accessor :id, :name , :type, :db

  def initialize(id:id, name:name, type:type, db: db)
    @id = id
    @name = name
    @type = type
    @db = db
  end

  def self.save(name, type, db)
    @db.execute("insert into #{@db}(id, name, type) values ()")
  end

  def self.find(id, db)
  end

end
