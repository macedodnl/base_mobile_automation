require "time"
require "base64"
require "net/smtp"
require "rake"

task :specs, [:tags] do |task, args|
  #time = Time.now.utc.iso8601.tr(":", "")
  #report = "--format html --out=log/report_#{time}.json"
  sh "cucumber #{args[:tags]}"
end

#criando email
remetente = "daniel.jocken@gwsistemas.com.br"
senha = "dNl@2020!gWsis"
dominio = "smtp.gwsistemas.com.br"
destinatario = "macedodnl@gmail.com"
port = 587

marker = "AUNIQUEMARKER"
time = Time.now.utc.iso8601
report_path = "test_report.html"
file_encoded_content = Base64.encode64(File.open(report_path, "rb").read)

body = <<-EOF
Mensagem enviada automaticamente ao final da execução dos testes automatizados de iteração mobile.
Fim da execução: #{time}
Em anexo o relatório de execução: Mobile_Test_Report.html
EOF

msg = <<-EOF
From: QA - Mobile Automation <#{remetente}>
To: All <#{destinatario}>
Subject: Report automation run at #{time}
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary=#{marker}
--#{marker}
EOF

part2 = <<-EOF
Content-Type: text/plain
Content-Transfer-Encoding:8bit

#{body}
--#{marker}
EOF

attch = <<-EOF
Content-Type: multipart/mixed; name = "Mobile_Test_Report.html"
Content-Transfer-Encoding:base64
Content-Disposition: attachment; filename = "Mobile_Test_Report.html"

#{file_encoded_content}
--#{marker}--
EOF

msg_and_attach = msg + part2 + attch

task :enviar_report do
  Net::SMTP.new("#{dominio}", port).start("automacaodomain.com", "#{remetente}", "#{senha}", "login") do |smtp|
    #smtp.starttls()
    smtp.send_message msg_and_attach,
                      "#{remetente}",
                      "#{destinatario}"
  end
rescue => e
  puts e
end
