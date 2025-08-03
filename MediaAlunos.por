programa {
  funcao inicio() {

    // variaveis
    inteiro alunos,pausa, maior_media, diminuir , menor_media
    cadeia situacao

    escreva("DIGITE O NUMERO DE ALUNOS DA TURMA:")
    leia(alunos) // Quantidade de alunos da turma

    pausa = 0
    inteiro media[alunos]
    cadeia nome[alunos]

    enquanto (pausa < alunos) {
      inteiro media_aluno[3] //vetor para guardar a nota do aluno
      inteiro aprovados, reprovados
      escreva("Qual o nome do aluno?")
      leia(nome[pausa])
      escreva("digite a primeira nota:")
      leia(media_aluno[0])
      escreva("digite a segunda nota:")
      leia(media_aluno[1])
      escreva("digite a terceira nota:")
      leia(media_aluno[2])
      media[pausa] = (media_aluno[0] + media_aluno[1] + media_aluno[2]) / 3 //calculo da media
      pausa = pausa + 1

    }

    //------------------------------------------------
    // Encontrar maior media da turma
    pausa = 0
    diminuir = 0
    
    enquanto (pausa < alunos){
      escreva(pausa)
      se (media[pausa] > media[diminuir]){
        diminuir = pausa
      }
      pausa = pausa + 1
    }
    maior_media = diminuir

    //-------------------------------------------
    // Encontrar menor logica da turma 
    pausa = 0
    diminuir = maior_media
    
    enquanto (pausa < alunos){
      escreva(pausa)
      se (media[pausa] < media[diminuir]){
        diminuir = pausa
      }
      pausa = pausa + 1
    }
    menor_media = diminuir

    //-------------------------------------------
    //Resultados na tela
    pausa = 0
    enquanto (pausa < alunos){
      se (media[pausa] >= 7){
        situacao = "APROVADO"
      }
      se (media[pausa] <= 6){
        situacao = "REPROVADO"
      }
      escreva("Nome: ", nome[pausa], " | MEDIA: ", media[pausa], " | Situacao do aluno: ", situacao, "\n")
      pausa = pausa + 1
    }
    //-------------------------------------------
    
    escreva("A maior media foi: ", nome[maior_media], "\n")
    escreva("A menor media foi: ", nome[menor_media], "\n")
  }
}


    