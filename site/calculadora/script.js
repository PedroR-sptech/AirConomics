var tempoResfriamento = 0

function calcular(){
  var selectSala = select_sala.value
  var inputBTU = Number(ipt_btu.value)
  var tempoUso = Number(ipt_tempo.value) * 60
  var tamanhoSala = 0
  var cargaTermica = 0
  var ciclo = 0

  if(selectSala == 1){
    tamanhoSala = 30
    cargaTermica = 6000
  }else if(selectSala == 2){
    tamanhoSala = 50
    cargaTermica = 10000
  }else{
    tamanhoSala = 100
    cargaTermica = 20000
  }

  tempoResfriamento = (cargaTermica/inputBTU) * 60
  console.log(tempoResfriamento)
 
  ciclo = 30 + tempoResfriamento // Ciclo do ar-condicionado em minutos
  console.log(ciclo)

  var qtdCiclos = (tempoUso / ciclo)
  console.log(qtdCiclos)

  var consumoDiarioEco = 2.7 * (qtdCiclos / 3)
  var custoDiarioEco = consumoDiarioEco * 0.80
  var custoMensalEco = custoDiarioEco * 30
  console.log(consumoDiarioEco)
  console.log(custoDiarioEco)
  console.log(custoMensalEco)

  var consumoDiario = 2.7 * (tempoUso / 60)
  var custoDiario = consumoDiario * 0.80
  var custoMensal = custoDiario * 30
  console.log(consumoDiario)
  console.log(custoDiario)
  console.log(custoMensal)
  
  var economia = custoMensal - custoMensalEco
  console.log(economia)

  div_result.innerHTML = `
                          <p>Levando em conta sua sala com o tamanho de ${tamanhoSala}m2, aparelhos ${inputBTU}BTU's,
                          tempo de uso diário de ${tempoUso} horas,
                          o ciclo do seu aparelho (Tempo de resfriamento da sala até a temperatura deseja e tempo até essa temperatura subir 2 graus)
                          é de ${ciclo} minutos, com seu uso, você terá ${qtdCiclos} por dia.</p>
                          Com isso, lhe apresentamos 2 cenários:
                          <br>
                          Cenário 1 (uso contínuo do aparelho): Você gastará R$${custoMensal.toFixed(2)}/mês
                          <br>
                          Cenário 2 (uso por ciclos): Você gastará R$${custoMensalEco.toFixed(2)}/mês
                          <br>
                          A economia mensal utilizando o cenário 2 é de R$${economia.toFixed(2)}/mês
                         `
}
