class Interface
  constructor: () ->
    @showSignin()
    @showSignup()

  showSignin: () ->
    $("#showSignIn").click( () ->
      $('#signUp').addClass('hidden')
      $('#signIn').removeClass('hidden')
    )

  showSignup: () ->
    $("#showSignUp").click( () ->
      $('#signUp').removeClass('hidden')
      $('#signIn').addClass('hidden')
    )

$(document).ready () ->
  new Interface
