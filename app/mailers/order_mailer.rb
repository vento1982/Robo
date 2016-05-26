class OrderMailer < ApplicationMailer

 
  def order_confirmation(order)
    @order = order

    mail to: order.address.email, subject: "Dziękujemy za złożenie zamówienia."
  end


  def order_in_progress(order)
    @order = order
   
    mail to: order.address.email, subject: "Zamówienie w realizacji."
  end


  def order_shipped(order)
    @order = order

    mail to: order.address.email, subject: "Zamówienie zostało wysłane."
  end


  def order_cancelled(order)
    @order = order

    mail to: order.address.mail, subject: "Zamówienie zostało anulowane."
  end
end
