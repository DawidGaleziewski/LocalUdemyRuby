#struct is like a mini- class
#it only has instance variables
#representing object with constant variables
module AppStore
  App = Struct.new(:name, :developer, :version)
  APPS =[App.new(:Chat, :facebook, 2.0),
    App.new(:Twitter, :twitter, 5.8),
    App.new(:Weather, :yahoo, 10.15)
  ]

  def self.find_app(name)
    APPS.find {|app| app.name == name}
  end
end


class Gadget
  attr_reader :production_number
  attr_accessor :username, :apps

  def initialize(username, password)
    @username = username
    @password = password
    @production_number = generate_production_number
    @apps = []
  end

  def to_s
    "Gadget #{self.production_number} has the username #{username}
    It is made from the #{self.class} class and it
    has the ID #{self.object_id}"
  end

  def reset(username, password)
      self.username = username
      self.password = password
      self.apps = []
  end

  def password=(new_password)
    if validate_password(new_password)
      @password = new_password
    end
  end

  attr_writer :apps

  def generate_production_number
    start_digits = rand(10000..99999999)
    end_digits = rand(10000..99999999)
    alphabet = ("A".."Z").to_a
    midle_digits = "2017"
    5.times {midle_digits << alphabet.sample}
    "#{start_digits}-#{midle_digits}-#{end_digits}"
  end

  def validate_password(new_password)
    new_password.is_a?(String) && new_password.length >= 6 && new_password =~ /\d/
  end

#using struct inside the class
  def install_app(name)
    app = AppStore.find_app(name)
    @apps << app unless @apps.include?(app)
  end

  def delete_app(name)
    app = apps.find {|install_app| install_app.name == name }
    apps.delete(app) unless app.nil?
  end
end

#adding and deleting apps
g = Gadget.new("boris", "password")
p g.apps
g.install_app(:Chat)
g.install_app(:Twitter)
g.delete_app(:Twitter)
p g.apps
