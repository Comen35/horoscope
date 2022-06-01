class HoroscopeModel {
  final String _horoscopeName;
  final String _horoscopeDate;
  final String _horoscopeDetail;
  final String _horoscopeSmallImage;
  final String _horoscopeBigImage;

  get horoscopeName => this._horoscopeName;

  get horoscopeDate => this._horoscopeDate;

  get horoscopeDetail => this._horoscopeDetail;

  get horoscopeSmallImage => this._horoscopeSmallImage;

  get horoscopeBigImage => this._horoscopeBigImage;

  HoroscopeModel(
      this._horoscopeName,
      this._horoscopeDate,
      this._horoscopeDetail,
      this._horoscopeSmallImage,
      this._horoscopeBigImage);

  @override
  String toString() {
    return '$_horoscopeName - $_horoscopeBigImage';
  }
}
