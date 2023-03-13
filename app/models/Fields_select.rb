class FieldsSelect < ApplicationRecord
  require 'yaml'
  def mapping_fields(fields)

    puts fields.class
    data = YAML.load_file('app/models/jump_fields.yml')
    puts data
    puts "Enter field mappings in the format 'jump_seller_field=vivino_field'."
    puts "Press enter without entering anything to finish."
    field_mappings = {}
    while true
      input = STDIN.gets.chomp
      break if input.empty?
      jump_seller_field, vivino_field = input.split('=')
      field_mappings[jump_seller_field.strip] = vivino_field.strip
    end


    puts field_mappings
    # Copy the data from the JumpSeller file to the Vivino file using the field mappings
    field_mappings.each do |jump_seller_field, vivino_field|

      fields['product'][vivino_field] = data['product'][jump_seller_field]
    end

    # Print the Vivino data with the copied fields
    puts fields.to_yaml
  end
end