import 'package:flutter/material.dart';

const darkColor = Color(0xFFEF4A2D);
const lightColor = Color(0xFFF4E6E3);
//0xFFEF4A2D

const kLargeTextTile = TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 36.0);

const kNormalTextTile = TextStyle(fontWeight: FontWeight.normal, color: Colors.black, fontSize: 28.0);

const kCardTitleStyle =TextStyle(fontSize: 34, fontWeight: FontWeight.w800);

const kCardSubTitleStyle =TextStyle(fontSize: 24, fontWeight: FontWeight.w400);

const kPriceTextStyle =TextStyle(fontWeight: FontWeight.bold, color: Colors.black,fontSize: 24);

const kFromTextStyle =TextStyle(color: Colors.black, fontSize: 12);

const kCartCountStyle = TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w800);


getSelectedIcon(bool isSelected, Color iconcolor, IconData icon){
    return isSelected? Icon(icon,color: iconcolor, size: 35):Icon(icon,color: Colors.black12,size: 25);

}

// 404 Image

const broken_image = 'images/image_broken_error.jpg';

//Icon Images
const icon_chair_black = "images/iconimages/icon_chair_black.png";
const icon_chair_white = "images/iconimages/icon_chair_white.png";
const icon_table_black = "images/iconimages/icon_table_black.png";
const icon_table_white = "images/iconimages/icon_table_white.png";
const icon_lamp_black = "images/iconimages/icon_lamp_black.png";
const icon_lamp_white = "images/iconimages/icon_lamp_white.png";
const icon_sofa_black = "images/iconimages/icon_sofa_black.png";
const icon_sofa_white = "images/iconimages/icon_sofa_white.png";
const icon_filter = 'images/iconimages/filtericon.png';



// Images furniture
const image_chair_eams = "images/furnitureimages/imageschair/chair_eames_walnut.png";
const image_chair_office = "images/furnitureimages/imageschair/chair_office.png";
const image_chair_wooden = "images/furnitureimages/imageschair/chair_wooden.png";
const image_chair_rocking = "images/furnitureimages/imageschair/chair_rocking.png";
const image_chair_sciccors = "images/furnitureimages/imageschair/chair_sciccors.png";
const image_chair_armchair = "images/furnitureimages/imageschair/chair_armchair.png";

// Images used Chair
const chair_chalina_bone = "images/furnitureimages/imageschair/chair_chalina_bone.jpg";
const image_chair_recliner = "images/furnitureimages/imageschair/chair_recliner.jpg";
const image_chair_boardroom = "images/furnitureimages/imageschair/chair_boardroom.jpeg";
const image_chair_tubchair = "images/furnitureimages/imageschair/chair_tub.jpg";
const image_chair_dinning_chair = "images/furnitureimages/imageschair/chair_dinning.jpeg";
const image_chair_dinning_viennese = "images/furnitureimages/imageschair/chair_viennese.jpg";

//Images table new

const image_table_activity = "images/furnitureimages/tableimages/table_activity.jpg";
const image_table_ashely_round = "images/furnitureimages/tableimages/table_ashely_round.jpg";
const table_beckley_end = "images/furnitureimages/tableimages/table_beckley_end.jpeg";
const table_class_coffee_ = "images/furnitureimages/tableimages/table_class_coffee_.jpg";
const table_garden = "images/furnitureimages/tableimages/table_garden.jpeg";
const table_haydan = "images/furnitureimages/tableimages/table_haydan.jpg";
const table_ikea_lerhaman = "images/furnitureimages/tableimages/table_ikea_lerhaman.jpg";
const table_nilkamal = "images/furnitureimages/tableimages/table_nilkamal.jpg";
const table_outdoor = "images/furnitureimages/tableimages/table_outdoor.jpg";
const table_rayon_study_table = "images/furnitureimages/tableimages/table_rayon_study_table.jpg";
const table_winsome_wood = "images/furnitureimages/tableimages/table_winsome_wood.jpg";
const table_worktable = "images/furnitureimages/tableimages/table_worktable.jpg";

