$(function(){
  console.log("coucou");
  //jquery loaded
  $(".like").on("click", function () {
    var post_id = $(this).data("id");
    
    console.log(post_id);

    $.ajax({
      url: "post/like/" + post_id,
      method: "GET"
    }).done(function (response) {
      console.log("OK");
      console.log(response);
    });

  })
})
