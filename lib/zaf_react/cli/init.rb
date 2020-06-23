module ZAFReact
 class CLI < Thor


   include Thor::Actions


   desc "init", "Initialize a new React App with ZAFClient"
   # ========================================================
   def init
     if Dir.exists?("source/src")
       exit if ask("Are you sure you want to create a fresh app? This will remove all current work. Type ".light_cyan << "yes".light_yellow << " to continue.".light_cyan).downcase != "yes"
     end
     remove_dir ".git"
     remove_dir "source"
     remove_dir "zendesk"
     remove_dir "build"
     raise Error, "npm create failed".light_red if !system("create-react-app source")
     remove_dir "source/.git"
     copy_file "#{APP_ROOT}/lib/zaf_react/source/react/public/index.html", "source/public/index.html", force: true
     remove_dir "source/src"
     directory "#{APP_ROOT}/lib/zaf_react/source/react/src", "source/src"
     directory "#{APP_ROOT}/lib/zaf_react/source/zendesk", "zendesk"
     remove_file "source/.gitignore"
     copy_file "#{APP_ROOT}/lib/zaf_react/ignore", ".gitignore"
     system "git init"
   end


 end
end
