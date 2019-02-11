require 'zip'
require 'fileutils'
Dir.glob("aozora_zip/cards/**/*.zip") do |d|
  dir = File.dirname(d)
  zipfile = File.basename(d)
  Dir.chdir(dir) do
    Zip::File.open(zipfile) do |zip|
      entry = zip.glob('*.txt').first
      if entry
        txtdir = File.basename(zipfile)
        FileUtils.mkdir_p(txtdir)
        entry.extract(txtdir+".txt")
      end
    end
  end
end
