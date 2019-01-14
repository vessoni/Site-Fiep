<?php

class site_IndexController extends Zend_Controller_Action
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
              'ativo = ?' => 1)
      );

      $footer = new Application_Model_Atena_FooterMdl();
      $this->view->footer = $footer->find(1);
    }


    public function indexAction()
    {

      $banner = new Application_Model_Atena_BannerMdl();
      $this->view->banner = $banner->fetchAll(
          array(
              'ativo = ?' => 1)
      );


        $fazemos = new Application_Model_Atena_TipoMdl();
        $this->view->fazemos = $fazemos->fetchAll(
            array(
                'ativo = ?' => 1,
                'categoria_idcategoria = ?' => 1)
        );

        $eventos = new Application_Model_Atena_TipoMdl();
        $this->view->eventos = $eventos->fetchAll(
            array(
                'ativo = ?' => 1,
                'categoria_idcategoria = ?' => 2)
        );


        $acoes = new Application_Model_Atena_TipoMdl();
        $this->view->acoes = $acoes->fetchAll(
            array(
                'ativo = ?' => 1,
                'categoria_idcategoria = ?' => 3)
        );

        $destaques = new Application_Model_Atena_TipoMdl();
        $this->view->destaques = $destaques->fetchAll(
            array(
                'ativo = ?' => 1,
                'categoria_idcategoria = ?' => 4),
            '',
            '4'
        );

//      echo '<pre>';
//      var_dump(  $this->view->fazemos);
//      die();

    }


}
