var outroProvedor = document.querySelector('.outro-provedor')
var divResultado = document.querySelector('.container-result')
var taxaProvedora = 0

function mostrar_outra(){
  outroProvedor.style.display = 'block'
}

function calcular(){
  var qtdAparelhos = Number(ipt_qtd_aparelhos.value)
  var horasConsumo = Number(ipt_horas_consumo.value)
  var horasConsumoMensal = (horasConsumo * 30) * qtdAparelhos
  var potenciaAparelho = Number(ipt_potencia.value)

  var provedora = document.querySelector('input[name="provedor"]:checked').value
  console.log(provedora)
  
  var consumo = (horasConsumo * potenciaAparelho / 1000) * 30 * qtdAparelhos
  var ecoConsumo = consumo * 0.8

  if(provedora == 'enel'){
    taxaProvedora = 0.656
  }else if(provedora == 'cpfe'){
    taxaProvedora = 0.690
  }else if(provedora == 'outro'){
    taxaProvedora = taxaProvedora = Number(ipt_taxa_outro.value)
  }else{
    taxaProvedora = 0
  }

  var pgtoSProduto = consumo * taxaProvedora
  var pgtoCProtudo = pgtoSProduto * 0.8

  divResultado.innerHTML = `Com o consumo de ${consumo} watts, 
                            sendo utilizado em ${qtdAparelhos} aparelhos, durante ${horasConsumoMensal} horas por mês
                            <br> Seu consumo mensal de energia com o nosso produto instalado, somado à taxa da sua provedora
                            será de ${ecoConsumo}Kwh e com isso você irá pagar ${pgtoCProtudo}
                           `
}
