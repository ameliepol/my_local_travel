document.addEventListener('turbolinks:load', () => {
  $(document).ready(function(){
    $("label.mood-choice").click(function(e){
      console.dir(e)
      $("label.mood-choice").not(e.currentTarget).removeClass("active");
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

  $(document).ready(function(){
    $("label.distance-choice").click(function(e){
      console.dir(e)
      $("label.distance-choice").not(e.currentTarget).removeClass("active");
      console.log("hello")
      $(this).toggleClass("active");

    });
  });

  $(document).ready(function(){
    $("label.day-choice").click(function(e){
      console.dir(e)
      $("label.day-choice").not(e.currentTarget).removeClass("active");
      console.log("hello")
      $(this).toggleClass("active");

    });
  });
});
