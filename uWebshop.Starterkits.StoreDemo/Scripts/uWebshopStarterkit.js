$(document).ready(function() {

	$('[data-toggle=tooltip]').tooltip({ trigger: 'hover' });
	
	
	$("form.handleform").submit(function (event) {

		event.preventDefault();

		uWebshop.Handle(JSON.stringify($(this).serializeArray()),
			function (data) {
				
				console.log(data);

				if (data.success) {

					$.each(data.messages, function(key, value) {
						showAlert("<strong>" + key + "</strong>: " + value, "success");
					});
				
					
					$('.orderline-body').each(function() {
						var orderlineId = $(this).attr("id");

						var remove = true;
						
						$.each(data.item.OrderLines, function(i) {
							if (data.item.OrderLines[i].Id == orderlineId) {
								remove = false;
								$('#' + orderlineId + " .orderlinetotalamount").html(data.item.OrderLines[i].Amount.WithVat.ToCurrencyString);
							}
							;
						});

						if (remove) {
							$(this).remove();
						}
					});

					if ($('.orderline-body').length == 0) {
						$('#uwebshopbasket').replaceWith('<h3>There are no items in your basket</h3>');
					}


					// if there is no minibasket, make one!
					$('a#minibasketplaceholder').replaceWith('<a href="/basket">' +
						'<span class="glyphicon glyphicon-shopping-cart"></span> ' +
						'<span class="grandtotalvalue"></span> ' +
						'<span class="badge ordertotalquanity"></span></a>');

					// fill items on screen
					$('.ordertotalquantity').html(data.item.Quantity);
					$('.discounttotalvalue').html(data.item.OrderAmount.Discount.WithVat.ToCurrencyString);
					$('.subtotalvalue').html(data.item.SubTotal.ToCurrencyString);
					$('.grandtotalvalue').html(data.item.GrandTotal.ToCurrencyString);

				} else {
					showAlert("Something went wrong, please try again.", "danger");
				}
			},
			function (request) {
				
			});
	});
	
	function showAlert(message, alerttype) {

		$('#alertplaceholder').html('<div id="alertpopup" class="alert alert-' + alerttype + ' alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>' + message);

		setTimeout(function () { // this will automatically close the alert and remove this if the users doesnt close it in 5 secs


			$("#alertpopup").fadeOut();

		}, 4000);
	}

});