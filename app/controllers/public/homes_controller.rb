class Public::HomesController < ApplicationController

def top
    @cars = Car.all
end
end
