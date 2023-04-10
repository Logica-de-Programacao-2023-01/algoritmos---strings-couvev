package main

import (
    "fmt"
    "strings"
)

func main() {
    var input string
    fmt.Print("Digite uma string: ")
    fmt.Scanln(&input)
    result := strings.ToUpper(input)
    fmt.Println("Resultado:", result)
}


package main

import (
    "fmt"
    "strings"
)

func main() {
    var input string
    fmt.Print("Digite uma string: ")
    fmt.Scanln(&input)
    result := strings.ReplaceAll(input, " ", "")
    fmt.Println("Resultado:", result)
}


package main

import (
    "fmt"
    "strings"
)

func main() {
    var input, oldChar, newChar string
    fmt.Print("Digite uma string: ")
    fmt.Scanln(&input)
    fmt.Print("Digite o caractere a ser substituído: ")
    fmt.Scanln(&oldChar)
    fmt.Print("Digite o novo caractere: ")
    fmt.Scanln(&newChar)
    result := strings.ReplaceAll(input, oldChar, newChar)
    fmt.Println("Resultado:", result)
}


package main

import (
    "fmt"
)

func main() {
    var str1, str2 string
    fmt.Print("Digite a primeira string: ")
    fmt.Scanln(&str1)
    fmt.Print("Digite a segunda string: ")
    fmt.Scanln(&str2)
    if str1 == str2 {
        fmt.Println("As strings são iguais")
    } else {
        fmt.Println("As strings são diferentes")
    }
}


package main

import (
    "fmt"
    "strconv"
)

func main() {
    var input string
    fmt.Print("Digite uma string: ")
    fmt.Scanln(&input)
    _, err := strconv.ParseFloat(input, 64)
    if err == nil {
        fmt.Println("A string é um número em ponto flutuante válido")
    } else {
        fmt.Println("A string não é um número em ponto flutuante válido")
    }
}


package main

import (
    "fmt"
    "strings"
)

func main() {
    var input string
    fmt.Print("Digite uma string: ")
    fmt.Scanln(&input)
    words := strings.Fields(input)
    count := len(words)
    fmt.Println("A string possui", count, "palavras")
}


package main

import (
    "fmt"
    "regexp"
)

func main() {
    var input string
    fmt.Print("Digite uma string: ")
    fmt.Scanln(&input)
    match, _ := regexp.MatchString(".*[0-9].*", input)
    if match {
        fmt.Println("A string contém pelo menos um número")
    } else {
        fmt.Println("A string não contém nenhum número")
    }
}


package main

import "fmt"

func main() {
    var str string
    fmt.Print("Digite uma string: ")
    fmt.Scan(&str)
    
    inverted := ""
    for i := len(str) - 1; i >= 0; i-- {
        inverted += string(str[i])
    }
    
    fmt.Println("String invertida:", inverted)
}


package main

import "fmt"

func main() {
    var str string
    var oldChar, newChar byte
    fmt.Print("Digite uma string: ")
    fmt.Scan(&str)
    fmt.Print("Digite o caractere a ser substituído: ")
    fmt.Scanf("%c\n", &oldChar)
    fmt.Print("Digite o caractere substituto: ")
    fmt.Scanf("%c\n", &newChar)
    
    replaced := ""
    for i := 0; i < len(str); i++ {
        if str[i] == oldChar {
            replaced += string(newChar)
        } else {
            replaced += string(str[i])
        }
    }
    
    fmt.Println("String resultante:", replaced)
}


package main

import (
    "fmt"
    "sort"
    "strings"
)

func main() {
    var str1, str2 string
    fmt.Print("Digite a primeira string: ")
    fmt.Scan(&str1)
    fmt.Print("Digite a segunda string: ")
    fmt.Scan(&str2)
    
    str1 = strings.ToLower(str1)
    str2 = strings.ToLower(str2)
    
    if len(str1) != len(str2) {
        fmt.Println("As strings não são anagramas.")
        return
    }
    
    str1Slice := strings.Split(str1, "")
    str2Slice := strings.Split(str2, "")
    sort.Strings(str1Slice)
    sort.Strings(str2Slice)
    
    for i := 0; i < len(str1Slice); i++ {
        if str1Slice[i] != str2Slice[i] {
            fmt.Println("As strings não são anagramas.")
            return
        }
    }
    
    fmt.Println("As strings são anagramas.")
}


package main

import (
    "fmt"
    "sort"
    "strings"
)

func main() {
    var str1, str2 string
    fmt.Print("Digite a primeira string: ")
    fmt.Scan(&str1)
    fmt.Print("Digite a segunda string: ")
    fmt.Scan(&str2)
    
    str1 = strings.ToLower(str1)
    str2 = strings.ToLower(str2)
    
    if len(str1) != len(str2) {
        fmt.Println("As strings não são anagramas.")
        return
    }
    
    str1Slice := strings.Split(str1, "")
    str2Slice := strings.Split(str2, "")
    sort.Strings(str1Slice)
    sort.Strings(str2Slice)
    
    for i := 0; i < len(str1Slice); i++ {
        if str1Slice[i] != str2Slice[i] {
            fmt.Println("As strings não são anagramas.")
            return
        }
    }
    
    fmt.Println("As strings são anagramas.")
}


package main

import (
    "fmt"
    "strings"
)

func main() {
    var str string
    fmt.Print("Digite uma string: ")
    fmt.Scan(&str)
    
    str = strings.ToLower(str)
    vowels := "aeiou"
    result := ""
    
    for i := 0; i < len(str); i++ {
        if !strings.Contains(vowels, string(str[i])) {
            result += string(str[i])
        }
    }
    
    fmt.Println("String resultante:", result)
}


package main

import (
	"fmt"
	"strings"
)

func main() {
	var input string
	fmt.Print("Digite uma palavra ou frase: ")
	fmt.Scanln(&input)

	// Remover espaços e transformar tudo em minúsculo
	input = strings.ReplaceAll(strings.ToLower(input), " ", "")

	// Verificar se é um palíndromo
	for i := 0; i < len(input)/2; i++ {
		if input[i] != input[len(input)-i-1] {
			fmt.Println("A palavra/frase digitada NÃO é um palíndromo")
			return
		}
	}

	fmt.Println("A palavra/frase digitada é um palíndromo")
}


package main

import (
	"fmt"
	"strconv"
)

func main() {
	var input string
	fmt.Print("Digite uma sequência de números: ")
	fmt.Scanln(&input)

	// Verificar se é uma sequência numérica crescente
	prev := -1
	for _, char := range input {
		num, err := strconv.Atoi(string(char))
		if err != nil {
			fmt.Println("O valor digitado não é uma sequência numérica crescente")
			return
		}
		if num <= prev {
			fmt.Println("O valor digitado não é uma sequência numérica crescente")
			return
		}
		prev = num
	}

	fmt.Println("O valor digitado é uma sequência numérica crescente")
}
