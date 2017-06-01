require 'csv'

module Business
  class File

    def initialize(row_of_data)
      @data = row_of_data
    end

    def self.all(filename)
      rows = CSV.read(filename, headers: true)
      rows.collect do |row|
        Business::File.new(row.to_h)
      end
    end

  end
end
