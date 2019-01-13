<?php

class Admin_footerController extends App_Controller_Action
{

    public function init()
    {
    	parent::init();
    }

    public function indexAction()
    {
        $footer = new Application_Model_Atena_FooterMdl();
        $this->view->footer = $footer->fetchAll(
            array(
                'ativo = ?' => 1)
        );

        $tag = new Application_Model_Atena_TagMdl();
        $this->view->tag = $tag->fetchAll(
            array(
                'ativo = ?' => 1)
        );



    }

    public function excluirAction()
    {



        if($tipo == NULL){
            $atividades = new Application_Model_Atena_CategoriaMdl();
            $dadosProcessados = array(
                "idcategoria" => $this->_request->getParam("id"),
                "ativo" =>  0,
            );

            $atividades->_update($dadosProcessados);
            $this->_redirect('/admin/prob');
        }

        if($tipo == 2){
            $atividades = new Application_Model_Atena_TipoMdl();
            $dadosProcessados = array(
                "idtipo" => $this->_request->getParam("id"),
                "ativo" =>  0,
            );

            $atividades->_update($dadosProcessados);
            $this->_redirect('/admin/prob');

        }

    }


}

