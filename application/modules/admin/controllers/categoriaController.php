<?php

class Admin_categoriaController extends App_Controller_Action
{

    public function init()
    {
    	parent::init();
    }

    public function indexAction()
    {
        $atividades = new Application_Model_Atena_CategoriaMdl();
        $this->view->atividades = $atividades->fetchAll(
            array(
                'ativo = ?' => 1)
        );

        if ($this->_request->isPost()) {
            $data = $this->_request->getPost();

            if ($data['tipo'] == 1){
                $atividade = new Application_Model_Atena_CategoriaMdl();
                $dadosProcessados = array(
                    "nome" =>  $data['nome'],
                    "descricao" => $data['descricao'],
                    "ativo" => 1,
                );
                $atividade->_insert($dadosProcessados);
                $this->_redirect('/admin/categoria');
            }
        }
    }

    public function excluirAction()
    {

            $atividades = new Application_Model_Atena_CategoriaMdl();
            $dadosProcessados = array(
                "idcategoria" => $this->_request->getParam("id"),
                "ativo" =>  0,
            );

            $atividades->_update($dadosProcessados);
            $this->_redirect('/admin/categoria');

    }


}
