<?php

class Contract {
    
    private static $db;
    private static $obj  = null;
    private static $id = null;

    //Возращаем, или создаем новый объект
    public static function getObject($id) {
            self::$db = DataBase::getDBO();
            if(self::$obj == null) {
                self::$obj = self::$db->getAllByID($id);
                self::$id = $id;
            }
            else {
                if(self::$id === $id) return self::$obj;
                else {
                    self::$obj = self::$db->getAllByID($id);
                    self::$id = $id;
                }
            }
            
        return self::$obj;
    }
}