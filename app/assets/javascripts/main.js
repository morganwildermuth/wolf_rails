var Pack = {
  init: function(){
    $("#submit_pack_creation").click(function(){
      $('form.create_wolf_form').trigger('submit.rails');
    })
  }
}

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
  Pack.init();
})