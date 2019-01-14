<?php

class Admin_indexController extends App_Controller_Action
{

    public function init()
    {
      parent::init();

    }

    public function indexAction()
    {
      //  die('index');
    }


    public function categoriaAction()
    {
        $categoria = new Application_Model_Atena_CategoriaMdl();
        $this->view->categoria = $categoria->find($this->_request->getParam("id"));

        $subcategorias = new Application_Model_Atena_TipoMdl();
        $this->view->subcategorias = $subcategorias->fetchAll(
            array(
               'categoria_idcategoria = ?' => $this->_request->getParam("id"),
                'ativo = ?' => 1)
        );


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


    public function subcategoriaAction()
    {
        $subcategoria = new Application_Model_Atena_TipoMdl();
        $this->view->subcategoria = $subcategoria->find($this->_request->getParam("id"));

        if ($this->_request->isPost()) {
            $data = $this->_request->getPost();
                $subcategoria = new Application_Model_Atena_TipoMdl();
                $dadosProcessados = array(
                    "idtipo" => $this->_request->getParam("id"),
                    "nome" =>  $data['nome'],
                    "descricao" => $data['descricao'],
                );
                $subcategoria->_update($dadosProcessados);
                $this->_redirect('/admin/subcategoria/'.$this->_request->getParam("id"));
        }
    }

    public function editAction(){
        $atividades = new Application_Model_Atena_CategoriaMdl();
        $dadosProcessados = array(
            "idcategoria" => $this->_request->getParam("id"),
            "ativo" =>  0,
        );

        $atividades->_update($dadosProcessados);
        $this->_redirect('/admin/categoria/'.$this->_request->getParam("id"));
    }

}
