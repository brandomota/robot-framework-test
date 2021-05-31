from Browser.utils import keyword


class CorreiosLib():
    ROBOT_LIBRARY_SCOPE = 'SUITE'

    @keyword
    def mostrar_resultado(self, rua, bairro, estado):
        print(rua)
        print(bairro)
        print(estado)