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
    }


    public function indexAction()
    {

      $banner = new Application_Model_Atena_BannerMdl();
      $this->view->banner = $banner->fetchAll(
          array(
              'ativo = ?' => 1)
      );

      $fazemos = new Application_Model_Atena_TipoMdl();
      $this->view->fazemos = $fazemos->findBy(
          array(
              'ativo = ?' => 1,
              'categoria_idcategoria' => 1)
      );

      echo '<pre>';
      var_dump(  $this->view->fazemos);
      die();

    }


}
