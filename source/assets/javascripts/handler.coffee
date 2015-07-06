$ ->

  $('.g-check').click ->
    current_count =  parseInt($('.hidden_counter')[0].innerHTML)
    $('.hidden_counter')[0].innerHTML = current_count + 1
    value1 = $('.g-numbers.latest>.g-num')[0].value
    value2 = $('.g-numbers.latest>.g-num')[1].value
    value3 = $('.g-numbers.latest>.g-num')[2].value
    $('.g-numbers.latest>.g-num')[0].value = ""
    $('.g-numbers.latest>.g-num')[1].value = ""
    $('.g-numbers.latest>.g-num')[2].value = ""
    if current_count % 4
      $('.answers').prepend "<div>#{value1}  #{value2}  #{value3} -- <span style='color:green'>RIGHT</span></div>"
    else
      $('.answers').prepend "<div>#{value1}  #{value2}  #{value3} -- <span style='color:red'>WRONG</span></div>"
  $('.surprise').click ->
    $('.surprise').removeClass("hidden")
    
