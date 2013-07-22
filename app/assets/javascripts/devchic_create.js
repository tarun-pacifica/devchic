$(document).ready(function(){

  var create_developer = function () {
    console.log('create_dev');
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
      return false;
    };
  $('#create_dev').on('click', create_developer);
    // event.preventDefault();

});