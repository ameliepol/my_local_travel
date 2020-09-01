$(document).ready(function(){
  $("label.activity-choice").click(function(e){
    console.dir(e)
    $("label.activity-choice").not(e.currentTarget).removeClass("active");
    console.log("hello")
    $(this).toggleClass("active");

  });
});

$(document).ready(function(){
  $("label.budget-choice").click(function(e){
    console.dir(e)
    $("label.budget-choice").not(e.currentTarget).removeClass("active");
    console.log("hello")
    $(this).toggleClass("active");

  });
});

