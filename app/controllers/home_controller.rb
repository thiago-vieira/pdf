class HomeController < ApplicationController

  def index
  end

  def gerar_pdf
    pdf = Prawn::Document.new
    pdf.text "Teste"
    pdf.render_file "pdf/teste.pdf"
    redirect_to "/enviar_pdf/teste.pdf"
  end

  def enviar_pdf
    send_file "pdf/#{params[:file]}.#{params[:format]}",
     :filename => "#{params[:file]}.#{params[:format]}",
     :type => 'application/pdf'
  end

end

