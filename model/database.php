<?php

class DataBase {

    private $mysqli;
    private static $db = null;
	

    public function __construct($db_host, $db_user, $db_password, $db_name) {
        $this->mysqli = @new mysqli($db_host, $db_user, $db_password, $db_name);
        if ($this->mysqli->connect_errno)
            exit("Ошибка соединения с базой данных");
        $this->mysqli->query("SET lc_time_names = 'ru_RU'");
        $this->mysqli->set_charset("utf8");
    }
    
    //Cоздаем 1 подключение к бд (Singleton)
    public static function getDBO() {
		if (self::$db == null) self::$db = new DataBase(Config::DB_HOST, Config::DB_USER, Config::DB_PASSWORD, Config::DB_NAME);
		return self::$db;
	}
    
    //Создаем массив данных для одного договора
    public function getAllByID($id) {
        $query = "SELECT * FROM obj_contracts
                    LEFT JOIN obj_services 
                    ON obj_contracts.id_contract = obj_services.id_contract
                    LEFT JOIN obj_customers
                    ON obj_contracts.id_customer = obj_customers.id_customer
                    WHERE obj_contracts.id_contract = $id";
        $res = $this->mysqli->query($query) or die(mysql_error());
        while ($row = $res->fetch_assoc())$arr[] = $row;
        //$arr = array_merge($arr, $arr);
        return $arr;
    }

}
