var Wolf = {
  init: function() {
    $('form#new_wolf').on('ajax:success', this.addWolf);
  },

  addWolf: function(event, data) {
    $('#wolves').append(data)
  }
}

$(document).ready(function(){ 
  Wolf.init();
  console.log('got here');
})