class Pokemon
  attr_accessor :id, :name , :type, :db

  def initialize(id:id, name:name, type:type, db: db)
    @id = id
    @name = name
    @type = type
    @db = db
  end

  def self.save(name, type, db)
    ins = @db.prepare("insert into #{@db}(name, type) values ('#{name}', '#{type}')")
    string.each { |s| ins.execute(s) }
  end

  def self.find(id, db)
    ins = db.prepare("select * from #{db} where id= '#{id}'")
    string.each { |s| ins.execute(s) }
  end

end
