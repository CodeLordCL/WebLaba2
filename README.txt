Два варианта запуска 

1) ИЗ под докера docker run --rm -t -p 8080:5678 -v `pwd`:/app ruby:2.7-alpine ruby /app/Ruby.rb
(pwd не будет работать на винде. На его место подставте абсолютный путь к файлу)

2)Утавновить компилятор руби. В gemfile написать ег версию в 4ой строке. В консоли bundle instal и потом ruby Ruby.rb 
В консоли должно появиться что то типо 
== Sinatra (v2.1.0) has taken the stage on 5678 for development with backup from Puma
*** SIGUSR2 not implemented, signal based restart unavailable!
*** SIGUSR1 not implemented, signal based restart unavailable!
*** SIGHUP not implemented, signal based logs reopening unavailable!
Puma starting in single mode...
* Puma version: 5.2.2 (ruby 3.0.0-p0) ("Fettisdagsbulle")
*  Min threads: 0
*  Max threads: 5
*  Environment: development
*          PID: 11632
* Listening on http://0.0.0.0:5678
Use Ctrl-C to stop