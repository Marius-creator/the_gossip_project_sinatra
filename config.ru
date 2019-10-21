require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)

require 'controller' #ce fichier permet de lancer toute l'application.
run ApplicationController #lance la classe application controleur 
