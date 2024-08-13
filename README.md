Bu proje Terraform kullanılarak geliştirilmiştir.

AWS ortamında önce terPromethus_Server_vpc oluşturulmuş altına Prometheus_Server_instance'ı oluşturulmuştur. Output olarak ürettiği linklerden prometheus ve grafana'ya erişilir.
Terraform_aws_vpc'si oluşturulup burada EC2 olarak kafka ve web adı altında NGINX bulunur.

Terraform çalıştırılmadan önce provider.tf içindeki access_key ve secret_keyaccess_key doldurulmalıdır.

<img width="1437" alt="Ekran Resmi 2024-08-12 23 08 30" src="https://github.com/user-attachments/assets/cdfe27f6-6c90-4500-9b60-3a0a2532dd43">
<img width="1437" alt="Ekran Resmi 2024-08-12 23 09 15" src="https://github.com/user-attachments/assets/68740b75-7317-49ff-8da2-f4787b3e916e">
