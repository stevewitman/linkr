//triggered when modal is about to be shown
// $('#edit-link').on('show.bs.modal', function(e) {
//
//   console.log('********* HERE **********')
//
//     //get data-id attribute of the clicked element
//     var linkid = $(e.relatedTarget).data('linkid');
//
//     //populate the textbox
//     $(e.currentTarget).find('input[name="linkid"]').val(linkid);
// });


$(document).ready(function () {
    $('#edit-link').on('show.bs.modal', function (event) {
      console.log('qwer')
        console.log($(event.relatedTarget).attr('data-linkid'));
        console.log('asdf')
    });
});
