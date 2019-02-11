require 'zip'
require 'fileutils'
Dir.glob("aozora_zip/cards/**/*.zip") do |d|
  dir = File.dirname(d)
  zipfile = File.basename(d)
  Dir.chdir(dir) do
    begin
      Zip::File.open(zipfile) do |zip|
        entry = zip.glob('*.txt').first
        if entry
          txtdir = File.basename(zipfile, ".*")
          FileUtils.mkdir_p(txtdir)
          txtfile = txtdir+"/"+txtdir+".txt"
          unless File.exist?(txtfile)
            puts txtfile
            entry.extract(txtfile)
          end
        end
      end
    rescue StandardError => e
      p e.message
    end
  end
end
