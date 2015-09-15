<html>
    <head>
        <title>тестовое задание</title>
    </head>
    <body>
        <!-- Создаем объект с ID -->
        <?php $arr = Contract::getObject(1);?>
        <table >
            <tr>
                <td colspan='2'><b>информация про клиента</b></td>
            </tr>
            <tr>
                <td >название клиента:</td>
                <td ><?php echo $arr[0]['name_customer'] ?></td>
            </tr>
            <tr>
                <td >компания:</td>
                <td ><?php echo $arr[0]['company'] ?></td>
            </tr>
            <tr>
                <td colspan='2'><b>информация про договор</b></td>
            </tr>
            <tr>
                <td >номер договора:</td>
                <td ><?php echo $arr[0]['number'] ?></td>
            </tr>
            <tr>
                <td >дата подписания:</td>
                <td ><?php echo $arr[0]['date_sign'] ?></td>
            </tr>
            <tr>
                <td colspan='2'><b>информация про сервисы</b></td>
            </tr>
            <?php for($i=0; $i<count($arr); $i++): ?>
            <tr>
                <td >Название сервиса:</td>
                <td> <?php echo $arr[$i]['title_service'] ?></td>
            </tr>
            <tr>
                <td >Статус:</td>
                <td><?php echo $arr[$i]['status'] ?></td>
            </tr>
            <tr><td colspan='2'><?php if(count($arr) > 1) echo "<hr>" ?></td></tr>
            <?php endfor; ?>
        </table>
        
       
    </body>
</html>

