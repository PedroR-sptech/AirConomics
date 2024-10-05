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
  div_result.style.display = 'block';

  div_result.innerHTML = `
                           <p><strong>Resultados da Calculadora:</strong></p>
    <p>Com base nas informações fornecidas, realizamos os cálculos para determinar os custos e ciclos do seu aparelho.</p>
    <ul>
        <li><strong>Tamanho da sala:</strong> ${tamanhoSala} m²</li>
        <li><strong>Capacidade total:</strong> ${inputBTU} BTUs</li>
        <li><strong>Tempo de uso diário:</strong> ${tempoUso / 60} horas</li>
        <li><strong>Ciclo do aparelho:</strong> ${ciclo} minutos</li>
        <li><strong>Ciclos por dia:</strong> ${qtdCiclos.toFixed(2)}</li>
    </ul>
    <p>Os custos foram calculados considerando:</p>
    <ul>
        <li><strong>Cenário 1:</strong> Uso contínuo: R$${custoMensal.toFixed(2)}/mês</li>
        <li><strong>Cenário 2:</strong> Uso por ciclos: R$${custoMensalEco.toFixed(2)}/mês</li>
        <li><strong>Economia mensal:</strong> R$${economia.toFixed(2)}/mês</li>
    </ul>
`;
}
