def hello_journalists
  arr = ["@jcunniet", "@Aziliz31","@ssoumier","@marionsouzeau","@gaellombart","@bendarag","@AurelieLebelle","@julienduffe","@thomaspoupeau","@LilyRossignol","@ClairGuedon","@stephanieauguy","@claw_prolongeau","@_JulieMenard","@LColcomb","@Zlauwereys","@MeLonguet","@DorotheeLN"]
  random = arr.sample(5)
  i = 0
  while i < 5
    puts greet = "Hello, #{random[i]}!"
    i += 1
  end
end

hello_journalists
