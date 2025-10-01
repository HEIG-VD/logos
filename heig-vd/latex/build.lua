module = "heiglogo"

sourcefiles  = {"heiglogo.dtx","heiglogo.ins"}
installfiles = {"heiglogo.sty"}
typesetfiles = {"heiglogo.dtx"}
tagfiles     = {"heiglogo.dtx"} -- pour versions

checkengines = {"xetex","luatex"}
typesetexe   = "lualatex"

tdsroot = "texmf"
tdsdir  = "tex/latex/" .. module

kpse.set_program_name("texlua")
dofile(kpse.lookup("l3build.lua"))
