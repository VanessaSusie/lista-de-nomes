$my_array = [System.Collections.ArrayList]::new()
$loop = $true

While ($loop){
	WRITE-HOST "Digite [1] para listar todos os usuarios da lista;"
    WRITE-HOST "Digite [2] para adicionar um usuario na lista;"
    WRITE-HOST "Digite [3] para excluir um usuario da lista;"
	WRITE-HOST "Digite [0] para sair."
$option = READ-HOST

Switch($option){
	
	'1'{
		for ($index = 0; $index -lt $my_array.count; $index += 1) {
			WRITE-HOST $my_array[$index]
		}
		break
	}
	'2'{
		$username = READ-HOST "Digite seu nome, por favor."
		$my_array.add($username)
		break
	}
	'3'{
		$remove_user = READ-HOST "Digite o nome que deseja remover,por favor."
		$my_array.remove($remove_user)
		break
	}
	'0'{
		WRITE-HOST "End."
		$loop = $false
	}
	Default{
	WRITE-HOST "Opcao invalida."
	}
}


} 
