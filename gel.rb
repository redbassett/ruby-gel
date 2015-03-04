require "csv"

module Gel
  
  @gels = []
  @gels_loaded = false
  
  def Gel::required
    Gel.load_data
  end
  
  def Gel::gels
    @gels
  end
  
  def Gel::rgb(code)
    Gel::get_gel_by_code(code)[:rgb]
  end
  
  def Gel::name(code)
    Gel::get_gel_by_code(code)[:name]
  end
  
  private
    def Gel::get_gel_by_code(code)
      returns = @gels.select { |gel| gel[:code] === code.upcase }
      returns[0]
    end
    
    def Gel::load_data
      if !@gels_loaded
        ['rosco'].each do |brand|
          puts "Loading #{brand}…"
          Gel::load_gels_from_file "./#{brand}.csv"
        end
      end
    end

    def Gel::load_gels_from_file(file_name)
      source_text = File.read(file_name)
      csv = CSV.parse(source_text, :headers => true)
      csv.each do |gel|
        @gels.push({
          code: gel['Code'],
          name: gel['Name'],
          rgb: [gel['Red'], gel['Green'], gel['Blue']]
          })
      end
    end
end
