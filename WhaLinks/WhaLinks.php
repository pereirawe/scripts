<?php

class WhaLinks {
    public $arContacts;
    public $strMessage;
    
    private function encodeMessage($name, $phone){
        $text = 'Oi irmão '.$name.'! Sou o Presidente William Pereira do Ramo Borda do Campo, Da Igreja de Jesus Cristo dos Santos dos Últimos Dias.';
        $text = str_replace( ' ', '%20' , $text  );
        $url = 'https://web.whatsapp.com/send?phone=55'.$phone.'&text='.$text;
        return '<li><a href="'.$url.'" target="new">'.$name.'</a></li>';
    }
    
    public function createLinks($arContacts) {
        foreach ($arContacts as $name => $phone) {
            echo $this->encodeMessage($name, $phone);
        }
    }
}

$arContacts = array(
    'William' => '41987603488',
    'Liseth' => '41987603487',
    'Jared' => '41987603486'
);

$WhaLink = new WhaLinks;