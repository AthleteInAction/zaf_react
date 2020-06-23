module ZAFReact
 class CLI < Thor


   include Thor::Actions


   desc "package", "ZAT Package"
   # ========================================================
   def package
     build

     directory "build/assets/static/js", "build/assets" if Dir.exists?("build/assets/static/js")
     directory "build/assets/static/css", "build/assets" if Dir.exists?("build/assets/static/css")

     remove_dir "build/assets/static"

     Dir.glob([
       "build/assets/*.js",
       "build/assets/*.css",
       "build/assets/*.json",
       "build/assets/*.map",
       "build/assets/*.html"
    ]) do |filename|
       gsub_file filename, /(\"\/static\/(js|css)\/)|(\"static\/(js|css)\/)/i, '"'
     end

     system "zat package --path=build"
   end


 end
end
