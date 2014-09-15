# Utils

def dir(*args)
  return File.expand_path(File.join(File.dirname(__FILE__), '..', args))
end

class Dirs

  def self.root()
    return dir()
  end

  def self.cookbooks()
    return dir('cookbooks')
  end

  def self.site_cookbooks(name = '')
    return dir('site-cookbooks', name)
  end

  def self.roles()
    return dir('roles')
  end

  def self.environments()
    return dir('environments')
  end

  def self.data_bags()
    return dir('data_bags')
  end

end
