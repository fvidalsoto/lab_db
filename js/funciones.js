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
      console.log(resp);
      end = Date.now();

      $('.spinner').addClass('d-none');
      $('#btn-submit').attr('disabled', false);

      if (document.querySelector('.tiempo')) {
        document.querySelector('.tiempo').remove();
      }
      const tiempo = document.createElement('p');
      const minutos = ((end - start) / 1000 / 60).toFixed(2);
      tiempo.textContent = 'Tiempo de ejecucion: ' + minutos + ' minutos';
      tiempo.classList.add('tiempo');
      document.querySelector('#cont_tiempo').appendChild(tiempo);
    },
    error: function () {},
  });
});
