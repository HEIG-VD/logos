module = "heiglogo"

sourcefiles  = {"heiglogo.dtx","heiglogo.ins", "fonts.pdf"}
installfiles = {"heiglogo.sty"}
typesetfiles = {"heiglogo.dtx"}
tagfiles     = {"heiglogo.dtx"} -- pour versions

checkengines = {"xetex","luatex"}
typesetexe   = "lualatex"

tdsroot = "texmf"
tdsdir  = "tex/latex/" .. module
