import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_workers/utils/debouncer.dart';
import 'package:vansen/model/country.dart';
import 'package:vansen/utils/utils.dart';

class SignUpViewModel extends GetxController {
  var countrySelect = Rxn<CountryModel>();
  var selectedIndex = 0.obs;
  var listCountry = <CountryModel>[].obs;
  var listSearch = <CountryModel>[].obs;
  final debouncer = Debouncer(delay: const Duration(seconds: 1));
  final data = [
    CountryModel(
      sv501: 'Australia',
      sv502: 'https://d1yr3mzis030jk.cloudfront.net/piepme-sys/au.png',
    ),
    CountryModel(
      sv501: 'Cambodia',
      sv502: 'https://d1yr3mzis030jk.cloudfront.net/piepme-sys/kh.png',
    ),
    CountryModel(
      sv501: 'Germany',
      sv502: 'https://d1yr3mzis030jk.cloudfront.net/piepme-sys/de.png',
    ),
    CountryModel(
      sv501: 'Japan',
      sv502: "https://d1yr3mzis030jk.cloudfront.net/piepme-sys/jp.png",
    ),
    CountryModel(
      sv501: 'Korea',
      sv502: "https://d1yr3mzis030jk.cloudfront.net/piepme-sys/kr.png",
    ),
    CountryModel(
      sv501: 'Singapore',
      sv502: "https://flagpedia.net/data/flags/w580/sg.png",
    ),
    CountryModel(
      sv501: 'Thailand',
      sv502: "https://flagpedia.net/data/flags/w580/th.png",
    ),
    CountryModel(
      sv501: 'United States',
      sv502: "https://d1yr3mzis030jk.cloudfront.net/piepme-sys/us.png",
    ),
    CountryModel(
      sv501: 'Vietnam',
      sv502: "https://d1yr3mzis030jk.cloudfront.net/piepme-sys/vn.png",
    ),
  ];
  final textEditingController = TextEditingController();

  @override
  void onInit() {
    getListCountry();
    super.onInit();
  }

  getListCountry() {
    listCountry.value = data;
    listSearch.value = listCountry;
  }

  triggerSearch(String text) {
    if (text.isEmpty) {
      listSearch.value = listCountry;
    }

    listSearch.value = listCountry
        .where(
          (CountryModel country) => country.getName().contains(
                text.toLowerCase(),
              ),
        )
        .toList();
  }

  onUpdateCountry(CountryModel country, int index) {
    selectedZone(index);
    countrySelect.value = country;
  }

  selectedZone(int index) {
    if (index != selectedIndex.value) {
      selectedIndex.value = index;
    }
  }
}
