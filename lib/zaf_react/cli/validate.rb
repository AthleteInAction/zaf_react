module ZAFReact
 class CLI < Thor


   include Thor::Actions


   desc "validate", "ZAT Validate"
   # ========================================================
   def validate
     system "zat validate --path=build"
   end


 end
end
