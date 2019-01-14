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
            $caminho = $this->upload($_FILES['arquivo']['name']);

                $subcategoria = new Application_Model_Atena_TipoMdl();
                $dadosProcessados = array(
                    "idtipo" => $this->_request->getParam("id"),
                    "nome" =>  $data['nome'],
                    "descricao" => $data['descricao'],
                    "resumo" => $data['resumo'],
                    "img_destaque" => $caminho,
                    "icon" => $data['icon']
                );
                $subcategoria->_update($dadosProcessados);
                $this->_redirect('/admin/subcategoria/'.$this->_request->getParam("id"));
        }
    }

    public function upload(){

      $pieces = explode('\\', dirname(__FILE__));
      $path = $pieces[0].'\\'.$pieces[1].'\\'.$pieces[2].'\\public\\static\\upload\\images\\';
      $name = microtime()."-".$_FILES['arquivo']['name'];

      $destino = $path.$name;
      $arquivo_tmp = $_FILES['arquivo']['tmp_name'];

      move_uploaded_file( $arquivo_tmp, $destino );

      return $name;

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
