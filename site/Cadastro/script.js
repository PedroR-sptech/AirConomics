function verificar_senha(){
  var senha = senha_input.value
  var conf_senha = confirmacao_senha_input.value
  
  if(senha != conf_senha){
    confirmacao_senha_input.style.border = '1px solid #CC0000'
  }else{
    confirmacao_senha_input.style.border = 'none'
  }
}