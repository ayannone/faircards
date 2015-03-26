// $(document).ready(function(){
$(function(){  
  // // disable auto discover
  // Dropzone.autoDiscover = false;

  // var dropzone = new Dropzone (".dropzone", {
  //   maxFilesize: 2, // Set the maximum file size to 2 MB
  //   paramName: "picture[image]", // Rails expects the file upload to be something like model[field_name]
  //   addRemoveLinks: true, // Don't show remove links on dropzone itself.

  //   init: function() {
  //   return this.on('removedfile', function(file) {
  //     if (file.xhr) {
  //       return $.ajax({
  //         url: "" + ($(".dropzone").attr("action")) + "/" + (JSON.parse(file.xhr.response).id),
  //         type: 'DELETE'
  //       });
  //     }
  //   });
  // }

  // }); 

  // // dropzone.on("success", function(file) {
  // //   this.removeFile(file)
  // //   $.getScript("/pictures")
  // // })
});


// Dropzone.options.photoDropzone = {
//   paramName: "photo[attachment]",
//   maxFilesize: 2,
//   addRemoveLinks: true,
//   init: function() {
//     return this.on('removedfile', function(file) {
//       if (file.xhr) {
//         return $.ajax({
//           url: "" + ($("#photo-dropzone").attr("action")) + "/" + (JSON.parse(file.xhr.response).id),
//           type: 'DELETE'
//         });
//       }
//     });
//   }
// };













// function Picture(pictureJSON){
//   this.url = kittenJSON.url;
//   this.id = kittenJSON.id;
// }

// Kitten.prototype.create = function(url){  
//    $.ajax({
//     url: '/kittens',
//     method: 'post',
//     dataType: 'json',
//     data: {kitten: url},
//     success: function(){}
//    })
// }

// function preloadKittenPicture() {
//   var picWidth  = Math.floor((Math.random() * 100) + 100); 
//   var picHeight = Math.floor((Math.random() * 100) + 100);  
//   var url = "http://placekitten.com/"+picWidth+"/"+picHeight;
//   kitten_hidden = $('<img>').attr('src', url).addClass('kitten_hidden').draggable();
//   return url; 
// }


// var kitten_hidden;

// $(function(){  

//   var picWidth  = Math.floor((Math.random() * 100) + 100); 
//   var picHeight = Math.floor((Math.random() * 100) + 100);  
//   var url = "http://placekitten.com/"+picWidth+"/"+picHeight;
//   var kitten = $('<img>').attr('src', url).addClass('kitten').draggable();
  
//   kitten.appendTo($('#kitten')).hide().fadeIn(3000);

//   $('#not_meow').droppable({
//     drop: function(e, dropped){      
//       $(this).animate({backgroundColor: 'white'}, 500).animate({backgroundColor: 'red'}, 1500);
//       dropped.draggable.fadeOut(50);
//       url = preloadKittenPicture();
//       kitten_hidden.appendTo($('#kitten')).hide().fadeIn(50); 
//     }   
//   })

//   $('#meow').droppable({
//     drop: function(e, dropped){     
//       $(this).animate({backgroundColor: 'white'}, 500).animate({backgroundColor: 'green'}, 1500);
//       dropped.draggable.fadeOut(50);
//       var newKitten = new Kitten({url: url});
//       newKitten.create({url: url});  
//       url = preloadKittenPicture();
//       kitten_hidden.appendTo($('#kitten')).hide().fadeIn(50); 
//     }
//   })

// })



