<?php

class Admin_newsletterController extends App_Controller_Action
{

    public function init()
    {
        parent::init();
    }

    public function indexAction()
    {



    }

    public function excluirAction()
    {

        $newsletter = new Application_Model_Atena_NewsletterMdl();
        $dadosProcessados = array(
            "idservico" => $this->_request->getParam("id"),
            "ativo" =>  0,
        );
        $newsletter->_update($dadosProcessados);
        $this->_redirect('/admin/servico');
    }


}
