resource "kubernetes_service" "web" {

  metadata {
    name = "portfolio-service"
  }

  spec {

    selector = {
      app = "portfolio"
    }

    port {
      port        = 80
      target_port = 80
      node_port   = 30080
    }

    type = "NodePort"

  }

}