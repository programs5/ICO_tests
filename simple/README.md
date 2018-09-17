**Проверка работы контракта через truffle console**

* получаем ссылку на контракт  
`var cont = SimpleICO.at("0x414fe50a454d9c77a4d98e8a69d4e0824d35cf70");`

* вызываем функцию из контракта, указываем ее аргументы  
`cont.getBalance("0xf19f89209fa45c6956b1dce18ce03e1c85557b23");`  
`cont.transfer("0xf19f89209fa45c6956b1dce18ce03e1c85557b23", 10);`

