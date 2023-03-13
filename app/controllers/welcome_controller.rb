class WelcomeController < ApplicationController
  require 'C:\Users\jurod\Documents\rails-XML_Feed\app\models\Fields_select.rb'
  require 'erb'

  def initialize
    @fields_select=FieldsSelect.new

  end

  def show_menu
    @menu_options = [
      "Choose the beta partner",
      "Add Product",
      "trueut",
      "Delete Product",
      "Exit"
    ]
    puts @menu_options
  end

  def get_choice
    print "Enter your choice: "
    STDIN.gets.chomp.to_i
  end
  def choose_partner
    puts "Choose one of the partners "
    puts "1-Vivino"
    puts "2-Amazon"
    num =get_choice
    case num
    when 1
      fields = YAML.load_file("app/models/vivino.yml")
      hash = fields.reduce({}) { |result, element| result.merge(element) }

      puts hash.inspect
      puts hash.class
      @fields_select.mapping_fields(hash)
    when 2

      fields=["SKU", "StandardProductId","ProductTaxCode","LaunchDate","ReleaseDate","Condition","Rebate","ItemPackageQuantity","NumberOfItems","DescriptionData","ProductData"]

       @fields_select.mapping_fields(fields)
    end



  end
  def main_start
    render 'welcome/main_start'


    loop do
      @menu_options = [
        "Choose the beta partner",
        "Add Product",
        "Edit Product",
        "Delete Product",
        "Exit"
      ]
      render 'main_start'
      choice = get_choice

      case choice
      when 1
        choose_partner
      when 2
        add_product
      when 3
        edit_product
      when 4
        delete_product
      when 5
        puts "Goodbye!"
        break
      else
        puts "Invalid choice. Please try again."
      end

      puts
    end
  end

  def index
    render 'welcome/main_start'
  end



end
