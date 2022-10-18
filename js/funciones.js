/*****************
sweetAlert
****************/
function messageAlert(title, text, icon) {
  Swal.fire({
    position: 'center',
    icon: icon,
    title: title,
    text: text ? text : '',
    showConfirmButton: false,
    timer: 2500,
  });
}

$('#form-insert').on('submit', function (e) {
  e.preventDefault();
  let formulario = new FormData(this);
  let start = Date.now();
  let end;
  console.log('INICIÓ');
  $.ajax({
    url: './insert.php',
    type: 'POST',
    data: formulario,
    contentType: false,
    processData: false,
    beforeSend: function () {
      $('#btn-submit').attr('disabled', true);
      $('.spinner').removeClass('d-none');
    },
    success: function (resp) {
      end = Date.now();
      console.log('Tiempo de ejecucion: ', (end - start) / 1000, ' segundos');
      console.log(
        'Tiempo de ejecucion: ',
        (end - start) / 1000 / 60,
        ' minutos'
      );
      $('.spinner').addClass('d-none');
      $('#btn-submit').attr('disabled', false);
      console.log('Exito-> ', resp, ' inserciones');

      /* if (resp === '1') {
        messageAlert(
          '¡ÉXITO!',
          'El datos del usuario fueron editados correctamente',
          'success'
        );
      } else {
        messageAlert(
          '¡ERROR!',
          'No se pudieron editar los datos del usuario, intente nuevamente más tarde',
          'error'
        );
      } */
      console.log('FINALIZÓ');
    },
    error: function () {},
  });
});
