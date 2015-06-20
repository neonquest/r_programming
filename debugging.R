
log(-1)

printmsg <- function(x) {
    if (is.na(x))
        print ("X is NA")
    else if (x > 0) 
        print ("X > 0")
    else
        print ("x < 0")
    
    invisible(x)
}

printmsg(3)

printmsg(NA)


mean(adf)
traceback()

debug(lm)
lm(y-x)

options(error = recover)
read.csv("test2")
