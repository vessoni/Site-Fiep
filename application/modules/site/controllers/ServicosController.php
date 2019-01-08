<?php

class site_ServicosController extends Zend_Controller_Action
{

    public function init()
    {
        DIE('OI');
    }


    public function indexAction()
    {
        $pessoa = new Application_Model_Atena_TelefoniaDbt();
//        $this->_helper->layout->disableLayout();
        $sql = "SELECT * from banner";

        $rpessoa = $pessoa->getAdapter()->query($sql)->fetchALL();


        //die('oi Site');

        $this->view->teste = $rpessoa;

    }


}
