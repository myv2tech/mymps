resource "kubernetes_deployment" "web" {

  metadata {
    name = "portfolio"
  }

  spec {

    replicas = 2

    selector {
      match_labels = {
        app = "portfolio"
      }
    }

    template {

      metadata {
        labels = {
          app = "portfolio"
        }
      }

      spec {

        container {

          image = "piyushsonii/kajal-portfolio:v1"

          name  = "portfolio"

          port {
            container_port = 80
          }

        }

      }

    }

  }

}