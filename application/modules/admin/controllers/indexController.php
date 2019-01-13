<?php

class Admin_indexController extends App_Controller_Action
{

    public function init()
    {
      parent::init();

    }

    public function indexAction()
    {
        die('index');
    }


    public function categoriaAction()
    {
        $categoria = new Application_Model_Atena_CategoriaMdl();
        $this->view->categoria = $categoria->find($this->_request->getParam("id"));
        if ($this->_request->isPost()) {
            $data = $this->_request->getPost();
                $atividade = new Application_Model_Atena_CategoriaMdl();
                $dadosProcessados = array(
                    "idcategoria" => $this->_request->getParam("id"),
                    "nome" =>  $data['nome'],
                    "descricao" => $data['descricao'],
                );
                $atividade->_update($dadosProcessados);
                $this->_redirect('/admin/categoria/'.$this->_request->getParam("id"));

        }

    }

    public function editAction(){
        $atividades = new Application_Model_Atena_CategoriaMdl();
        $dadosProcessados = array(
            "idcategoria" => $this->_request->getParam("id"),
            "ativo" =>  0,
        );

        $atividades->_update($dadosProcessados);
        $this->_redirect('/admin/categoria/$this->_request->getParam("id")');
    }

}
