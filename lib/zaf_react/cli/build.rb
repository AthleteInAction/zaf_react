module ZAFReact
 class CLI < Thor


   include Thor::Actions


   desc "build", "Build React App"
   # ========================================================
   def build
     remove_dir 'build'
     directory 'zendesk', 'build'
     raise Error, "React build failed".light_red if !system("npm run build --prefix source")
     directory 'source/build', 'build/assets'
   end


 end
end
