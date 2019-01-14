<?php

class site_ViewController extends Zend_Controller_Action
{

    public function init()
    {

        $atividades = new Application_Model_Atena_CategoriaMdl();
        $this->view->atividades = $atividades->fetchAll(
            array(
                'ativo = ?' => 1)
        );

        $atividades1 = new Application_Model_Atena_TipoMdl();
        $this->view->atividades1 = $atividades1->fetchAll(
            array(
                'ativo = ?' => 1),"idtipo desc"
        );

        $footer = new Application_Model_Atena_FooterMdl();
        $this->view->footer = $footer->find(1);

    }


    public function indexAction()
    {
        if($this->_request->getParam("id") != 1 ){

            $categoria = new Application_Model_Atena_CategoriaMdl();
            $this->view->categoria = $categoria->find($this->_request->getParam("id"));

            $subcategorias = new Application_Model_Atena_TipoMdl();
            $this->view->subcategorias = $subcategorias->fetchAll(
                array(
                    'ativo = ?' => 1,
                    'categoria_idcategoria = ?' => $this->_request->getParam("id")
                ), "idtipo desc"
            );
        }

    }

    public function internaAction(){

        $subcategoria = new Application_Model_Atena_TipoMdl();
        $this->view->subcategoria = $subcategoria->find($this->_request->getParam("id"));

    }


}
