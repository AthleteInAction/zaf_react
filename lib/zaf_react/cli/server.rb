module ZAFReact
 class CLI < Thor


   include Thor::Actions


   desc "server", "Start ZAT Server"
   # ========================================================
   def server
     build
     raise Error, "ZAT build failed".light_red if !system("zat server --path=build")
   end


 end
end
