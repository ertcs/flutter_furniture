import 'package:flutter_app/util/utillityCommon.dart';


class FurnitureModel{
  String image;
  String name;
  String price;
  String tag;

  FurnitureModel(this.image,this.name,this.price,this.tag);

}

List<FurnitureModel> chairList=[
  FurnitureModel(image_chair_wooden,"Wooden","\$200",'Chair'),
  FurnitureModel(image_chair_rocking,"Rocking","\$250",'Chair'),
  FurnitureModel(image_chair_sciccors,"Sciccors","\$210",'Chair'),
  FurnitureModel(image_chair_armchair,"Arm Chair","\$230",'Chair'),
  FurnitureModel(image_chair_eams,"Eames","\$220",'Chair'),
  FurnitureModel(image_chair_office,"Office","\$130",'Chair'),

];

List<FurnitureModel> usedChairList=[
  FurnitureModel(image_chair_dinning_chair,"Dinning","\$210",'Chair'),
  FurnitureModel(chair_chalina_bone,"Chalina Bone","\$220",'Chair'),
  FurnitureModel(image_chair_recliner,"Recliner","\$130",'Chair'),
  FurnitureModel(image_chair_boardroom,"BoardRoom","\$200",'Chair'),
  FurnitureModel(image_chair_tubchair,"Tub Chair","\$250",'Chair'),
  FurnitureModel(image_chair_dinning_viennese,"Viennese","\$230",'Chair'),

];

List<FurnitureModel> tableList=[
  FurnitureModel(table_haydan,"Hyden","\$230",'Table'),
  FurnitureModel(table_garden,"Garden Table","\$240",'Table'),
  FurnitureModel(table_beckley_end,"Beckley End","\$170",'Table'),
  FurnitureModel(image_table_activity,"Activity Table","\$80",'Table'),
  FurnitureModel(image_table_ashely_round,"Ashely Round","\$200",'Table'),
  FurnitureModel(table_class_coffee_,"Glass Table","\$110",'Table'),

];

List<FurnitureModel> usedTableList=[
  FurnitureModel(table_winsome_wood,"Winsome","\$130",'Table'),
  FurnitureModel(table_rayon_study_table,"Rayon","\$110",'Table'),
  FurnitureModel(table_worktable,"Worktable","\$90",'Table'),
  FurnitureModel(table_nilkamal,"Nilkamal","\$50",'Table'),
  FurnitureModel(table_outdoor,"OutDoor Table","\$120",'Table'),
  FurnitureModel(table_garden,"Garden Table","\$120",'Table'),
  FurnitureModel(table_ikea_lerhaman,"Ikea Lerhaman","\$80",'Table'),


];

List<FurnitureModel> emptyList=[
  FurnitureModel(broken_image,"404","\$00.00",'Error'),
];
