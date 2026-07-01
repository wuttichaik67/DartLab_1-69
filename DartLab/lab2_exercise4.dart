void main(){
  String? middleName;
  String city = 'Nakhon Sawan';

  int middleNameLength = middleName?.length ?? 0;
  print(middleNameLength);
  print(city.length);
  print(middleName);

  middleName ??= 'N/A';
  print('Middle name after assignment: $middleName');

  middleName ??= 'Something Else';
  print('Middle name after second assignment: $middleName');

}