/// AddressData 는 사용자가 선택한 주소 정보를 담고 있는 객체이며
/// 모든 데이터는 문자열이며, 값이 없을 경우 공백입니다
class AddressData {
  /// @macro address_data
  AddressData({
    this.zonecode,
    this.address,
    this.addressEnglish,
    this.addressType,
    this.userSelectedType,
    this.noSelected,
    this.userLanguageType,
    this.roadAddress,
    this.roadAddressEnglish,
    this.jibunAddress,
    this.jibunAddressEnglish,
    this.autoRoadAddress,
    this.autoRoadAddressEnglish,
    this.autoJibunAddress,
    this.autoJibunAddressEnglish,
    this.buildingCode,
    this.buildingName,
    this.apartment,
    this.sido,
    this.sidoEnglish,
    this.sigungu,
    this.sigunguEnglish,
    this.sigunguCode,
    this.roadnameCode,
    this.bcode,
    this.roadname,
    this.roadnameEnglish,
    this.bname,
    this.bnameEnglish,
    this.bname1,
    this.bname1English,
    this.bname2,
    this.bname2English,
    this.hname,
    this.query,
    this.postcode,
    this.postcode1,
    this.postcode2,
    this.postcodeSeq,
  });

  ///
  factory AddressData.fromJson(Map<String, dynamic> json) => AddressData(
        zonecode: json['zonecode'] as String?,
        address: json['address'] as String?,
        addressEnglish: json['addressEnglish'] as String?,
        addressType: json['addressType'] as String?,
        userSelectedType: json['userSelectedType'] as String?,
        noSelected: json['noSelected'] as String?,
        userLanguageType: json['userLanguageType'] as String?,
        roadAddress: json['roadAddress'] as String?,
        roadAddressEnglish: json['roadAddressEnglish'] as String?,
        jibunAddress: json['jibunAddress'] as String?,
        jibunAddressEnglish: json['jibunAddressEnglish'] as String?,
        autoRoadAddress: json['autoRoadAddress'] as String?,
        autoRoadAddressEnglish: json['autoRoadAddressEnglish'] as String?,
        autoJibunAddress: json['autoJibunAddress'] as String?,
        autoJibunAddressEnglish: json['autoJibunAddressEnglish'] as String?,
        buildingCode: json['buildingCode'] as String?,
        buildingName: json['buildingName'] as String?,
        apartment: json['apartment'] as String?,
        sido: json['sido'] as String?,
        sidoEnglish: json['sidoEnglish'] as String?,
        sigungu: json['sigungu'] as String?,
        sigunguEnglish: json['sigunguEnglish'] as String?,
        sigunguCode: json['sigunguCode'] as String?,
        roadnameCode: json['roadnameCode'] as String?,
        bcode: json['bcode'] as String?,
        roadname: json['roadname'] as String?,
        roadnameEnglish: json['roadnameEnglish'] as String?,
        bname: json['bname'] as String?,
        bnameEnglish: json['bnameEnglish'] as String?,
        bname1: json['bname1'] as String?,
        bname1English: json['bname1English'] as String?,
        bname2: json['bname2'] as String?,
        bname2English: json['bname2English'] as String?,
        hname: json['hname'] as String?,
        query: json['query'] as String?,
        postcode: json['postcode'] as String?,
        postcode1: json['postcode1'] as String?,
        postcode2: json['postcode2'] as String?,
        postcodeSeq: json['postcodeSeq'] as String?,
      );

  /// 국가기초구역번호. 2015년 8월 1일부터 시행될 새 우편번호.
  String? zonecode;

  /// 기본 주소 (검색 결과에서 첫줄에 나오는 주소, 검색어의 타입(지번/도로명)에 따라 달라집니다.)
  String? address;

  /// 기본 영문 주소
  String? addressEnglish;

  /// 검색된 기본 주소 타입: R(도로명), J(지번)
  String? addressType;

  /// 검색 결과에서 사용자가 선택한 주소의 타입
  String? userSelectedType;

  /// 연관 주소에서 "선택 안함" 부분을 선택했을때를 구분할 수 있는 상태변수
  String? noSelected;

  /// 검색 결과에서 사용자가 선택한 주소의 언어 타입: K(한글주소), E(영문주소)
  String? userLanguageType;

  /// 도로명 주소
  String? roadAddress;

  /// 영문 도로명 주소
  String? roadAddressEnglish;

  /// 지번 주소
  String? jibunAddress;

  /// 영문 지번 주소
  String? jibunAddressEnglish;

  /// '지번주소'에 매핑된 '도로명주소'가 여러개인 경우, 사용자가 '선택안함' 또는 '지번주소'를
  ///  클릭했을 때 연관된 도로명 주소 중 임의로 첫번째 매핑 주소를 넣어서 반환합니다.
  String? autoRoadAddress;

  /// autoRoadAddress의 영문 도로명 주소
  String? autoRoadAddressEnglish;

  /// '도로명주소'에 매핑된 '지번주소'가 여러개인 경우, 사용자가 '선택안함' 또는 '도로명주소'를
  /// 클릭했을 때 연관된 지번 주소 중 임의로 첫번째 매핑 주소를 넣어서 반환합니다.
  String? autoJibunAddress;

  /// autoJibunAddress의 영문 지번 주소
  String? autoJibunAddressEnglish;

  /// 건물관리번호
  String? buildingCode;

  /// 건물명
  String? buildingName;

  /// 공동주택 여부 (아파트, 연립주택, 다세대주택 등)
  String? apartment;

  /// 도/시 이름
  String? sido;

  /// 도/시 이름의 영문
  String? sidoEnglish;

  /// 시/군/구 이름
  String? sigungu;

  /// 시/군/구 이름의 영문
  String? sigunguEnglish;

  /// 시/군/구 코드 (5자리 구성된 시/군/구 코드입니다.)
  String? sigunguCode;

  /// 도로명 코드, 7자리로 구성된 도로명 코드입니다. 추후 7자리 이상으로 늘어날 수 있습니다.
  String? roadnameCode;

  /// 법정동/법정리 코드
  String? bcode;

  /// 도로명 값, 검색 결과 중 선택한 도로명주소의 "도로명" 값이 들어갑니다.(건물번호 제외)
  String? roadname;

  /// 도로명 값, 검색 결과 중 선택한 도로명주소의 "도로명의 영문" 값이 들어갑니다.(건물번호 제외)
  String? roadnameEnglish;

  /// 법정동/법정리 이름
  String? bname;

  /// 법정동/법정리 이름의 영문
  String? bnameEnglish;

  /// 법정리의 읍/면 이름 ("동"지역일 경우에는 공백, "리"지역일 경우에는 "읍" 또는 "면" 정보가
  /// 들어갑니다.)
  String? bname1;

  /// 법정리의 읍/면 이름의 영문 ("동"지역일 경우에는 공백, "리"지역일 경우에는 "읍" 또는 "면"
  ///  정보가 들어갑니다.)
  String? bname1English;

  /// 법정동/법정리 이름
  String? bname2;

  /// 법정동/법정리 이름의 영문
  String? bname2English;

  /// 행정동 이름, 검색어를 행정동으로 검색하고, 검색결과의 법정동과 검색어에 입력한 행정동과 다른
  /// 경우에 표시하고, 데이터를 내립니다.
  String? hname;

  /// 사용자가 입력한 검색어
  String? query;

  /// 구 우편번호 (2020년 3월 9일 이후로는 데이터가 내려가지 않습니다.)
  String? postcode;

  /// 구 우편번호 앞 3자리 (2020년 3월 9일 이후로는 데이터가 내려가지 않습니다.)
  String? postcode1;

  /// 구 우편번호 뒤 3자리 (2020년 3월 9일 이후로는 데이터가 내려가지 않습니다.)
  String? postcode2;

  /// 구 우편번호 일련번호 (2020년 3월 9일 이후로는 데이터가 내려가지 않습니다.)
  String? postcodeSeq;
}
