

jj = require("jCore")
require("Motion")
--pa = require("pages")
--jj:home(1):size():dpi():pages():show():init()
jj:home(3):pages('pages'):ps(20):show():init()



test={}
test[1]=Motion({name ="主页",}):click():fun()


jj:execute(test, 10)







