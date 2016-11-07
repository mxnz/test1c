class ContragentsController < ApplicationController

  def index
    contragents = Contragent.all.includes(:bank_accounts).map { |c| contragent_to_hash(c) }

    render plain: contragents.to_json
  end


private
  
  def contragent_to_hash(contragent)
    {
      "Наименование"        => contragent.name,
      "НаименованиеПолное"  => contragent.full_name,
      "ИНН"                 => contragent.inn,
      "КПП"                 => contragent.kpp,
      "ЮрАдрес"             => contragent.legal_address,
      "ФактАдрес"           => contragent.actual_address,
      "ПочтАдрес"           => contragent.post_address,
      "Телефон"             => contragent.phone,
      "Email"               => contragent.email,
      "GUID"                => contragent.guid,
      "IDАИС"               => contragent.idais,
      "НомерИзменения"      => contragent.change_ver,
      "ПометкаУдаления"     => contragent.delete_flag,
      "Счета"               => contragent.bank_accounts.map { |ba| bank_account_to_hash(ba) }.as_json
    }
  end

  def bank_account_to_hash(bank_account)
    {
      "НомерСчета"         => bank_account.number,
      "БИК"                => bank_account.bik,
      "НаименованиеБанка"  => bank_account.bank_name,
      "КодВалютыСчета"     => bank_account.currency_code,
      "Основной"           => bank_account.primary? ? "Истина" : "Ложь",
      "КоррСчет"           => bank_account.korr_number
    }
  end
end
