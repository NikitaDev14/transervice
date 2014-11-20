var data = 
{
    init:
	{
		notation: 'Введите данные согласно примеру. Пример: Иванов Иван Иванович',
		template: new RegExp("[А-Я\-]{2,} [А-Я\-]{2,} [А-Я\-]{2,}", "i"),
		isValid: true
	},
    phone:
	{
		notation: 'Введите данные согласно примеру. Пример: 123-123-12-12',
		template: new RegExp("[0-9]{3}\-[0-9]{3}\-[0-9]{2}\-[0-9]{2}"),
		isValid: true
	},
    email:
	{
		notation: 'Введите данные согласно примеру. Пример: example14@mail.ex',
		template: new RegExp("[0-9a-z_]+@[0-9a-z_]+\.[a-z]{1,5}", "i"),
		isValid: true
	}
}