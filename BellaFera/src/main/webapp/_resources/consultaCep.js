$(document).ready(function(){
  $("#cep").focusout(function () {
      $.ajax({
          url: 'https://viacep.com.br/ws/' + $(this).val() + '/json/unicode/',
          dataType: 'json',
          success: function (resposta) {
              $("#logradouro").val(resposta.logradouro);
              $("#numero").focus();
          }
      });
  });
});
