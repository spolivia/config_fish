set -gx LS_COLORS "rs=0"                             # ? rs
set -gx LS_COLORS "$LS_COLORS:di=01;34"              # directory
set -gx LS_COLORS "$LS_COLORS:ln=01;36"              # symbolic link
set -gx LS_COLORS "$LS_COLORS:mh=00"                 # ? mh
set -gx LS_COLORS "$LS_COLORS:pi=40;33"              # fifo file
set -gx LS_COLORS "$LS_COLORS:so=01;35"              # socket file
set -gx LS_COLORS "$LS_COLORS:do=01;35"              # ? door 
set -gx LS_COLORS "$LS_COLORS:bd=01;93"              # block special file
set -gx LS_COLORS "$LS_COLORS:cd=00;93"              # char special file
set -gx LS_COLORS "$LS_COLORS:or=01;04;91"           # symbolic link pointing to nowhere (orphan)
set -gx LS_COLORS "$LS_COLORS:mi=00;06;91"           # non-existent file pointed to by a symbolic link
set -gx LS_COLORS "$LS_COLORS:su=37;41"              # ? setuid
set -gx LS_COLORS "$LS_COLORS:sg=30;43"              # ? setgid
set -gx LS_COLORS "$LS_COLORS:ca=30;41"              # ? ca
set -gx LS_COLORS "$LS_COLORS:tw=30;42"              # ? sticky other writable
set -gx LS_COLORS "$LS_COLORS:ow=34;42"              # ? other writable
set -gx LS_COLORS "$LS_COLORS:st=37;44"              # ? sticky
set -gx LS_COLORS "$LS_COLORS:ex=01;32"              # executable file

# [grey] fichiers de compilation

set -gx LS_COLORS "$LS_COLORS:*.o=0;90"   
set -gx LS_COLORS "$LS_COLORS:*.s=0;90"    

# [green] librairies 

set -gx LS_COLORS "$LS_COLORS:*.so=0;32"    
set -gx LS_COLORS "$LS_COLORS:*.a=0;32"      

# [bold] source files

set -gx LS_COLORS "$LS_COLORS:*.c=1"        
set -gx LS_COLORS "$LS_COLORS:*.cpp=1"       
set -gx LS_COLORS "$LS_COLORS:*.cxx=1"        
set -gx LS_COLORS "$LS_COLORS:*.cc=1"          
set -gx LS_COLORS "$LS_COLORS:*.h=1"            
set -gx LS_COLORS "$LS_COLORS:*.hh=1"            
set -gx LS_COLORS "$LS_COLORS:*.hpp=1"            
set -gx LS_COLORS "$LS_COLORS:*.tex=1"     

# [magenta] docs

set -gx LS_COLORS "$LS_COLORS:*.pdf=0;35"   
set -gx LS_COLORS "$LS_COLORS:*.dia=0;35"   

# [cyan] text files

set -gx LS_COLORS "$LS_COLORS:*.txt=0;36"     
set -gx LS_COLORS "$LS_COLORS:*.md=0;36"       
set -gx LS_COLORS "$LS_COLORS:*.conf=0;36"      
set -gx LS_COLORS "$LS_COLORS:*.log=0;36"        
set -gx LS_COLORS "$LS_COLORS:*.1=0;36"           
set -gx LS_COLORS "$LS_COLORS:*.2=0;36"           
set -gx LS_COLORS "$LS_COLORS:*.3=0;36"           
set -gx LS_COLORS "$LS_COLORS:*.4=0;36"           
set -gx LS_COLORS "$LS_COLORS:*.5=0;36"           
set -gx LS_COLORS "$LS_COLORS:*.6=0;36"           
set -gx LS_COLORS "$LS_COLORS:*.7=0;36"           
set -gx LS_COLORS "$LS_COLORS:*.8=0;36"           
set -gx LS_COLORS "$LS_COLORS:*AUTHORS=0;36"          
set -gx LS_COLORS "$LS_COLORS:*LICENSE=0;36"          
set -gx LS_COLORS "$LS_COLORS:*README=0;36"          
set -gx LS_COLORS "$LS_COLORS:*TODO=0;36"          
set -gx LS_COLORS "$LS_COLORS:*COPYING=0;36"          

# [orange] compilation tools

set -gx LS_COLORS "$LS_COLORS:*Makefile=0;38;2;195;122;65"            
set -gx LS_COLORS "$LS_COLORS:*CMakeLists.txt=0;38;2;195;122;65"     
set -gx LS_COLORS "$LS_COLORS:*configure=0;38;2;195;122;65"     
set -gx LS_COLORS "$LS_COLORS:*autogen.sh=0;38;2;195;122;65"     
set -gx LS_COLORS "$LS_COLORS:*.cmake=0;38;2;195;122;65"     
set -gx LS_COLORS "$LS_COLORS:*.pc=0;38;2;195;122;65"     

