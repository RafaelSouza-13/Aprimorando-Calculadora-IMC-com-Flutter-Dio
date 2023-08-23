import '../model/imc.dart';

class ImcRepository {
  final List<Imc> _listaImc = [];
  Future<void> adicionar(Imc imc) async {
    // await Future.delayed(const Duration(milliseconds: 100));
    _listaImc.add(imc);
  }

  void deletar(String id) {
    // await Future.delayed(const Duration(milliseconds: 100));
    _listaImc.remove(_listaImc.where((imc) => imc.idImc == id).first);
  }

  List<Imc> listarImcs() {
    return _listaImc;
  }
}
