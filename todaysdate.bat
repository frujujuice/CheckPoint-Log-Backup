for /f "tokens=1-5 delims=/ " %%d in ("%date%") do rename "fw.log" %%e-%%f-%%g.log
