class Pokemon
  attr_accessor :id, :name , :type, :db

  def initialize(id:id, name:name, type:type, db: db)
    @id = id
    @name = name
    @type = type
    @db = db
  end

  def self.save(name, type, db)
    statement = @db.prepare("insert into #{@db}(name, type) values ('#{name}', '#{type}')")
    @db.execute(statement);
  end

  def self.find(id, db)
    ins = db.prepare("select * from #{db} where id= '#{id}'")
    @db.execute()
  end

end
