import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_workers/utils/debouncer.dart';
import 'package:vansen/model/country.dart';
import 'package:vansen/utils/utils.dart';

class SignUpViewModel extends GetxController {
  var isSelectCountryShow = false.obs;
  var countrySelect = Rxn<CountryModel>();
  var selectedIndex = 0.obs;
  var result = <CountryModel>[].obs;
  final debouncer = Debouncer(delay: const Duration(seconds: 1));
  var countries = [
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
  ].obs;
  final textEditingController = TextEditingController();

  @override
  void onInit() {
    getListCountry();
    triggerSearch();
    super.onInit();

    // textEditingController.addListener(() {
    //   if (textEditingController.text.isEmpty) {
    //     result.value = countries;
    //   }
    // });
  }

  triggerSearch() {
    String text = textEditingController.text;
    result.value = countries
        .where(
          (CountryModel country) => (country.sv501 ?? '').contains(
            text,
          ),
        )
        .toList();
    printWrapped('${text}');
  }

  getListCountry() {
    final response = countries;
    if (response.isNotEmpty) {
      result = countries;
    }
  }

  onSelectCountryShow(bool isShow) {
    isSelectCountryShow.value = isShow;
  }

  onUpdateCountry(CountryModel country, int index) {
    selectedZone(index);
    countrySelect.value = country;
    onSelectCountryShow(false);
  }

  selectedZone(int index) {
    if (index != selectedIndex.value) {
      selectedIndex.value = index;
    }
  }
}
