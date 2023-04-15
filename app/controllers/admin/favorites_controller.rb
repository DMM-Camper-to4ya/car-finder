class Admin::FavoritesController < ApplicationController

 def
 customers = Customer.all
 customers.favorites
 end

