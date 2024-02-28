part of 'personal_data_bloc.dart';

class PersonalDataState extends Equatable{
  final bool delCard;

  // const PersonalDataState({required this.delCard});
  const PersonalDataState({this.delCard = false});

  PersonalDataState deleteCard({bool? delCard}){
    return PersonalDataState(delCard: delCard ?? this.delCard);
  }

  @override
  // List<Object?> get props => throw UnimplementedError();
  List<Object?> get props => [delCard];

}

