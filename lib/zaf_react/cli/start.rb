module ZAFReact
 class CLI < Thor


   include Thor::Actions


   desc "start", "Start local server"
   # ========================================================
   def start
     system "npm start --prefix source"
   end


 end
end
