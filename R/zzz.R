.First.lib <-function(lib,pkg)
{
ver <- read.dcf(file.path(lib, pkg, "DESCRIPTION"), "Version")
     ver <- as.character(ver)	

#library.dynam("binhf",pkg,lib)

cat("binhf", ver, "loaded\n")
}
