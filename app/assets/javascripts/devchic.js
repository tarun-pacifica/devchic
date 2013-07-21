$(document).ready(function(){

  var create_developer = function () {
      $.ajax({
        url:
        '/developers',
        data: {
          dev_namekey: $('#name').val(),
          dev_chictypekey: $('#chictype').val(),
          dev_languagekey: $('#language').val()
        },
        datatype:
          "json",
        type:
         'POST',
      })
      return false
};
  $('.button').click(create_developer);

//   var edit_developer = function () {
//     console.log('Woooo');
//     // $.ajax({
//     //   url:'/developers/',
//     //   data: {
//     //     dev_namekey: $(this).siblings('.name').text(),
//     //     dev_chictypekey: $(this).siblings('.chictype').text(),
//     //     dev_languagekey: $(this).siblings('.language').text
//     //   }
//     //}
//   };

// $('#edit_dev').click(console.log());

//   // does it matter which line is on

});