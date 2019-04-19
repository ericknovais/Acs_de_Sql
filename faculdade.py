__ErickNovais__LeonardoLopes__ = ['erick.hora@aluno.faculdadeimpacta.com.br',
                                  'Leonardo.lopes@aluno.faculdadeimpacta'
                                  '.com.br']


class Disciplina:
    '''
    Abstração de uma disciplinai, possui os atributos Nome e carga Horária
    '''
    def __init__(self, nome: str, carga_horaria: int) -> None:
        self.nome = nome
        self.carga_horaria = carga_horaria

    def get_nome(self) -> str:
        '''
        Acessor do atributo nome
        '''
        return self.nome

    def get_carga_horaria(self) -> int:
        '''
        Acessor do atributo cargar horaria
        '''
        return self.carga_horaria


class Pessoa:
    '''
    Abstração de uma pessoa no Modelo, classe base para Aluno e Professor
    que contém dados pertencentes a ambos.
    '''
    def __init__(self, nome: str, telefone: int, email: float) -> None:
        self.nome = nome
        self.telefone = telefone
        self.email = email

    def get_nome(self) -> str:
        '''
        Acessor do atributo Nome
        '''
        return self.nome

    def get_telefone(self) -> int:
        '''
        Acessor do atributo telefone
        '''
        return self.telefone

    def set_telefone(self, novo_telefone: int) -> None:
        '''
        Mutador do atributo telefone deve checar se é um número inteiro e,
        caso contrário devolver um TypeError
        '''
        if not type(novo_telefone) == int:
            raise TypeError
        elif novo_telefone > 10**10 or novo_telefone <= 10**7:
            raise ValueError
        else:
            self._tel = novo_telefone

    def get_email(self) -> str:
        '''
        Acessor do atributo email
        '''
        return self.email

    def set_email(self, novo_email) -> None:
        '''
        Mutador do atributo eail, deve checar se éum email válido
        (se possuir o caractere '@') e caso contrário devolver
        um ValueError
        '''
        if '@' not in novo_email:
            raise ValueError
        self._email = novo_email


class Aluno(Pessoa):

    def __init__(self, nome: str, telefone: int,
                 email: str, n_matricula: int) -> None:
        super().__init__(nome, telefone, email)
        self.n_matricula = n_matricula

    def get_matricula(self) -> int:
        '''
        Acessor do atributo matricula
        '''
        return self.n_matricula

    def matricular(self, disciplina: Disciplina) -> None:
        '''
        Realiza matrícula do Aluno na disciplina
        '''
        self.disciplina = disciplina.get_nome()

    def lista_disciplinas(self) -> list:
        '''
        Devolve a lista de disciplinas em que o aluno esta matriculado
        '''
        return self.disciplina


class Professor(Pessoa):
    '''
    Entidade professor do Modelo
    '''
    def __init__(self, nome, telefone, email):
        super().__init__(nome, telefone, email)

    def ministra(self, disciplina: Disciplina) -> None:
        '''
        Atribui o professor como ministrante da disiciplina
        Um professor não pode dar mais de 200 horas de aula,
        Caso um professor tente atribuir mais de 200h devolve
        ValueError
        '''
        if disciplina.carga_horaria > 200:
            raise ValueError
        else:
            self.disciplina = disciplina.get_nome()

    def lista_disciplinas(self) -> list:
        '''
        lista as disciplinas ministradas pelo professor
        '''
        return self.disciplina
