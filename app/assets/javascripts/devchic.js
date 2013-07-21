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
  $('#create_dev').click(create_developer);

});