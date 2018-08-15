class Pokemon
  attr_accessor :id, :name , :type, :db

  def initialize(id:id, name:name, type:type, db: db)
    @id = id
    @name = name
    @type = type
    @db = db
  end

  def self.save(name, type, db)
    #ins = db.prepare('insert into pokemon (name, type) values (\'#{name}\', \'#{type}\')')
    #String.each { |s| ins.execute(s) }
    db.execute('insert into pokemon (name, type) values (?,?)',[name, type])
  end

  def self.find(id, db)
    ins = db.prepare('select * from pokemon where id= \'#{id}\'')
    String.each { |s| ins.execute(s) }
  end
end
