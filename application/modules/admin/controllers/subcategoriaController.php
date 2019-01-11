<?php

class Admin_subcategoriaController extends App_Controller_Action
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

        $atividades1 = new Application_Model_Atena_TipoMdl();
        $this->view->atividades1 = $atividades1->fetchAll(
            array(
                'ativo = ?' => 1)
        );

        if ($this->_request->isPost()) {
            $data = $this->_request->getPost();

            if ($data['tipo'] == 1){
                $atividade = new Application_Model_Atena_CategoriaMdl();
                $dadosProcessados = array(
                    "nome" =>  $data['nome'],
                    "ativo" => 1,
                );
                $atividade->_insert($dadosProcessados);
                $this->_redirect('/admin/categoria');
            }else{
                $atividade = new Application_Model_Atena_tipoMdl();
                $dadosProcessados = array(
                    "nome" =>  $data['nome'],
                    "descricao" => $data['descricao'],
                    "ativo" => 1,
                    "categoria_idcategoria" => $data['categoria']
                );
                $atividade->_insert($dadosProcessados);
                $this->_redirect('/admin/subcategoria');
            }



        }


    }

    public function excluirAction()
    {
            $atividades = new Application_Model_Atena_TipoMdl();
            $dadosProcessados = array(
                "idtipo" => $this->_request->getParam("id"),
                "ativo" =>  0,
            );

            $atividades->_update($dadosProcessados);
            $this->_redirect('/admin/subcategoria');

    }


}
