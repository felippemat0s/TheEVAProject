var express = require("express");
var router = express.Router();

var quizzController = require("../controllers/quizzController");

router.post("/conhecimento", function (req, res) {
    quizzController.finalizarConhecimento(req, res);
});

router.post("/personalidade", function (req, res) {
    quizzController.finalizarPersonalidade(req, res);
})

router.post("/votar/:nomePerso", function (req, res) {
    quizzController.votarPorNome(req, res);
  });
  
  router.get("/ultimos", function (req, res) {
    quizzController.obterVotosAtualizados(req, res);
  });

  router.get("/personalidadegrafico", function (req, res) {
    quizzController.obterPersonagensAtualizados(req, res);
  });

  router.get("/kpis:idUsuario", function (req, res) {
    quizzController.obterKPIs(req, res);
  });

module.exports = router;