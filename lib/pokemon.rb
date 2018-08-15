class Pokemon
  attr_accessor :id, :name , :type, :db

  def initialize(id:id, name:name, type:type, db: db)
    @id = id
    @name = name
    @type = type
    @db = db
  end

  def self.save(name, type, db)
    statement = @db.prepare
    @db.execute(statement);
  end

  def self.find(id, db)
    @db.execute("select * from #{db} where id= '#{id}'")
  end

end
