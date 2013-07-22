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
// $('#edit_dev').click(console.log());
//   // does it matter which line is on
});