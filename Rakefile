<<<<<<< HEAD
require 'rubygems'
require 'rake'

task :symlink do
  symlink
end

namespace :symlink do
  task :force do
    symlink(true)
  end
end

def symlink(force = false)
  dir = File.dirname(__FILE__)
  force = force ? '-Ff' : ''
  excluded_files = ['.git', '.', '..', 'Rakefile', 'README.md']

  (Dir.glob('*') - excluded_files).each do |file|
    `ln -s #{force} #{File.join(dir, file)} #{ENV['HOME']}/.#{file}`
  end
end
=======
namespace :install do
  desc "install everything"
  task :all => ["install:vim", "install:zsh", "install:irb", "install:git"]

  desc "install vim config"
  task :vim do
    install("vim", "vimrc", "gvimrc")
  end

  desc "install sake"
  task :sake do
    install("sake")
  end

  desc "install irb stuffs"
  task :irb do
    install("irbrc")
  end

  desc "install zshrc"
  task :zsh do
    install("zshrc", "zsh")
    mkdir_p "#{ENV["HOME"]}/bin/config"
  end

  desc "install git"
  task :git do
    install("gitconfig", "gitignore")
  end

  desc "install ack"
  task :ack do
    install("ackrc", "ackrc")
  end
end

def install(*files)
  files.each do |src|
    dest = "#{ENV["HOME"]}/.#{src}"
    rm_rf dest

    ln_s "#{File.expand_path(".")}/#{src}", dest
  end
end
>>>>>>> 17f15f93f90d4c06553f5c32a7c8d6bbfc700974
