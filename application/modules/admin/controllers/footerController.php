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
        $this->view->footer = $footer->find(1);

        if ($this->_request->isPost()) {
            $data = $this->_request->getPost();
                $footer = new Application_Model_Atena_FooterMdl();
                $dadosProcessados = array(
                    "idfooter" => 1,
                    "coluna1" =>  $data['coluna1'],
                    "coluna2_titulo" =>  $data['coluna2_titulo'],
                    "coluna2_descricao" =>  $data['coluna2_descricao'],
                    "endereco" =>  $data['endereco'],
                    "telefone" =>  $data['telefone'],
                    "email" =>  $data['email']
                );

                $footer->_update($dadosProcessados);
                $this->_redirect('/admin/footer');
        }
    }


}
