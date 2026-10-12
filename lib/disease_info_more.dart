import 'disease_info.dart';

const String _noDisease = 'No disease detected.';
const String _looksHealthy = 'The leaf looks healthy.';
const String _noTreatment = 'No treatment needed.';

const Map<String, DiseaseInfo> diseaseInfoMore = {
  'Apple__Cedar_apple_rust': DiseaseInfo(
    cause: 'Fungus (Gymnosporangium juniperi-virginianae). It needs '
        'both apple and nearby juniper or cedar trees to complete its '
        'life cycle, and spreads by wind in wet spring weather.',
    symptoms: 'Bright yellow-orange spots on leaves, often with tiny '
        'dark dots in the centre. Fruit can also get spots.',
    prevention: 'Plant resistant apple varieties. Remove nearby '
        'juniper or cedar trees if possible. Prune for airflow.',
    treatment: 'Use a recommended fungicide from early spring, '
        'following the product label.',
  ),
  'Apple___healthy': DiseaseInfo(
    cause: _noDisease,
    symptoms: _looksHealthy,
    prevention: healthyTip,
    treatment: _noTreatment,
  ),
  'Blueberry___healthy': DiseaseInfo(
    cause: _noDisease,
    symptoms: _looksHealthy,
    prevention: healthyTip,
    treatment: _noTreatment,
  ),
  'Cherry_(including_sour)___Powdery_mildew': DiseaseInfo(
    cause: 'Fungus (Podosphaera). Spreads by wind and thrives in '
        'warm days with cool, humid nights.',
    symptoms: 'White powdery coating on leaves, curled or twisted '
        'young leaves, and sometimes patches on fruit.',
    prevention: 'Prune for open canopy and airflow. Avoid too much '
        'nitrogen fertiliser. Remove infected shoots.',
    treatment: 'Use a recommended fungicide at the first signs, '
        'following the product label.',
  ),
  'Cherry_(including_sour)___healthy': DiseaseInfo(
    cause: _noDisease,
    symptoms: _looksHealthy,
    prevention: healthyTip,
    treatment: _noTreatment,
  ),
  'Corn_(maize)___Cercospora_leaf_spot Gray_leaf_spot': DiseaseInfo(
    cause: 'Fungus (Cercospora zeae-maydis). It survives in corn '
        'residue and spreads in warm, humid weather.',
    symptoms: 'Long, narrow, rectangular grey to tan spots between '
        'the leaf veins, which can join and kill large leaf areas.',
    prevention: 'Rotate crops. Plough in crop residue. Use resistant '
        'hybrids. Avoid very dense planting.',
    treatment: 'Use a recommended fungicide if the disease appears '
        'early and the weather stays humid.',
  ),
  'Corn_(maize)___Northern_Leaf_Blight': DiseaseInfo(
    cause: 'Fungus (Exserohilum turcicum). It overwinters in crop '
        'residue and spreads by wind in moist, moderate weather.',
    symptoms: 'Long cigar-shaped grey-green to tan lesions on leaves, '
        'starting on lower leaves and moving upward.',
    prevention: 'Use resistant hybrids. Rotate crops. Bury or remove '
        'crop residue after harvest.',
    treatment: 'A recommended fungicide may help if infection starts '
        'before or around flowering.',
  ),
  'Corn_(maize)___healthy': DiseaseInfo(
    cause: _noDisease,
    symptoms: _looksHealthy,
    prevention: healthyTip,
    treatment: _noTreatment,
  ),
  'Grape___Black_rot': DiseaseInfo(
    cause: 'Fungus (Guignardia bidwellii). It survives in mummified '
        'berries and spreads in warm, wet weather.',
    symptoms: 'Small brown circular spots on leaves with dark edges, '
        'and berries that shrivel into hard black mummies.',
    prevention: 'Remove mummified berries and infected canes. Prune '
        'for airflow. Keep the area under vines clean.',
    treatment: 'Use a recommended fungicide from early shoot growth '
        'through fruit set, following the label.',
  ),
  'Grape___Esca_(Black_Measles)': DiseaseInfo(
    cause: 'A group of wood-rotting fungi that enter through pruning '
        'wounds and attack older vines.',
    symptoms: 'Yellow or brown "tiger stripe" patterns between leaf '
        'veins, dark spots on berries, and dying shoots.',
    prevention: 'Prune in dry weather and protect large cuts. Remove '
        'and burn dead wood. Avoid injuring vines.',
    treatment: 'There is no complete cure. Remove badly affected '
        'vines or parts and protect pruning wounds.',
  ),
  'Grape___Leaf_blight_(Isariopsis_Leaf_Spot)': DiseaseInfo(
    cause: 'Fungus (Pseudocercospora vitis). It spreads in warm, '
        'humid weather, mostly late in the season.',
    symptoms: 'Dark brown irregular spots on leaves that can join '
        'together, followed by yellowing and early leaf fall.',
    prevention: 'Improve airflow with pruning. Remove fallen leaves. '
        'Avoid overhead watering.',
    treatment: 'Use a recommended fungicide if spots keep spreading, '
        'following the label.',
  ),
  'Grape___healthy': DiseaseInfo(
    cause: _noDisease,
    symptoms: _looksHealthy,
    prevention: healthyTip,
    treatment: _noTreatment,
  ),
  'Orange___Haunglongbing_(Citrus_greening)': DiseaseInfo(
    cause: 'Bacterium (Candidatus Liberibacter) spread by a small '
        'insect called the Asian citrus psyllid. It can also spread '
        'through infected plant material.',
    symptoms: 'Blotchy yellow mottling on leaves, yellow shoots, '
        'small lopsided bitter fruit that stays green at the bottom.',
    prevention: 'Plant only certified disease-free saplings. Control '
        'the psyllid insect. Inspect trees regularly.',
    treatment: 'There is no cure. Remove infected trees as advised '
        'by the local agriculture department, and control the insect.',
  ),
  'Peach___Bacterial_spot': DiseaseInfo(
    cause: 'Bacteria (Xanthomonas arboricola). Spreads by wind-driven '
        'rain and survives in infected twigs.',
    symptoms: 'Small dark angular spots on leaves that may fall out, '
        'leaving a "shot-hole" look, plus spots on fruit.',
    prevention: 'Plant tolerant varieties. Avoid overhead watering. '
        'Keep trees healthy and well fed.',
    treatment: 'Copper-based sprays can reduce spread when used '
        'at the right time, following the label.',
  ),
  'Peach___healthy': DiseaseInfo(
    cause: _noDisease,
    symptoms: _looksHealthy,
    prevention: healthyTip,
    treatment: _noTreatment,
  ),
  'Pepper,_bell___healthy': DiseaseInfo(
    cause: _noDisease,
    symptoms: _looksHealthy,
    prevention: healthyTip,
    treatment: _noTreatment,
  ),
  'Raspberry___healthy': DiseaseInfo(
    cause: _noDisease,
    symptoms: _looksHealthy,
    prevention: healthyTip,
    treatment: _noTreatment,
  ),
  'Soybean___healthy': DiseaseInfo(
    cause: _noDisease,
    symptoms: _looksHealthy,
    prevention: healthyTip,
    treatment: _noTreatment,
  ),
  'Squash___Powdery_mildew': DiseaseInfo(
    cause: 'Fungus (commonly Podosphaera xanthii). Spreads by wind, '
        'and does well in warm, dry days with humid nights.',
    symptoms: 'White powdery patches on the upper side of leaves and '
        'stems, then yellowing and drying of the leaves.',
    prevention: 'Give plants space. Choose resistant varieties. '
        'Remove badly infected leaves.',
    treatment: 'Use a recommended fungicide at the first signs, '
        'following the product label.',
  ),
  'Strawberry___Leaf_scorch': DiseaseInfo(
    cause: 'Fungus (Diplocarpon earlianum). Spreads by water splash '
        'and survives on old infected leaves.',
    symptoms: 'Many small dark purple spots on leaves that grow and '
        'join, making the leaf look scorched and dry.',
    prevention: 'Remove old and infected leaves. Space plants for '
        'airflow. Water at the base. Rotate planting beds.',
    treatment: 'Use a recommended fungicide if the disease is '
        'spreading, following the label.',
  ),
  'Strawberry___healthy': DiseaseInfo(
    cause: _noDisease,
    symptoms: _looksHealthy,
    prevention: healthyTip,
    treatment: _noTreatment,
  ),
  'Tomato___Septoria_leaf_spot': DiseaseInfo(
    cause: 'Fungus (Septoria lycopersici). It survives on plant '
        'debris and spreads by water splash in warm, wet weather.',
    symptoms: 'Many small round spots with dark edges and pale grey '
        'centres on lower leaves, followed by yellowing and leaf drop.',
    prevention: 'Rotate crops. Remove plant debris. Mulch the soil. '
        'Avoid wetting the leaves.',
    treatment: 'Remove infected lower leaves and use a recommended '
        'fungicide if it keeps spreading.',
  ),
  'Tomato___Spider_mites Two-spotted_spider_mite': DiseaseInfo(
    cause: 'Tiny pests (two-spotted spider mites), not a disease. '
        'They multiply quickly in hot, dry weather and dusty '
        'conditions.',
    symptoms: 'Tiny yellow speckles on leaves, fine webbing under '
        'the leaves, and leaves that turn bronze and dry up.',
    prevention: 'Keep plants well watered. Avoid dusty conditions. '
        'Check the underside of leaves often.',
    treatment: 'Spray leaves with a strong stream of water and use '
        'a recommended miticide if the infestation is heavy.',
  ),
  'Tomato___Target_Spot': DiseaseInfo(
    cause: 'Fungus (Corynespora cassiicola). It likes warm, humid '
        'weather and spreads by wind and splashing water.',
    symptoms: 'Brown spots with ring patterns on leaves, stems and '
        'fruit, and leaf drop in severe cases.',
    prevention: 'Rotate crops. Improve airflow. Remove debris. '
        'Avoid watering the leaves.',
    treatment: 'Remove infected leaves and use a recommended '
        'fungicide if needed.',
  ),
  'Tomato___Tomato_Yellow_Leaf_Curl_Virus': DiseaseInfo(
    cause: 'A virus spread by whiteflies. It does not spread by '
        'touch.',
    symptoms: 'Leaves curl upward and turn yellow, plants stay '
        'small and stunted, and few or no fruits form.',
    prevention: 'Control whiteflies. Use virus-resistant varieties. '
        'Use clean seedlings. Use insect nets in nurseries.',
    treatment: 'There is no cure. Remove and destroy infected '
        'plants, and control the whiteflies.',
  ),
  'Tomato___Tomato_mosaic_virus': DiseaseInfo(
    cause: 'A virus that spreads by touch, tools, hands, and '
        'infected seed. It can survive on surfaces for a long time.',
    symptoms: 'Light and dark green mottled patches on leaves, '
        'curled or fern-like leaves, and poor fruit growth.',
    prevention: 'Use clean seed. Wash hands and disinfect tools. '
        'Do not smoke around plants. Remove infected plants.',
    treatment: 'There is no cure. Remove and destroy infected '
        'plants.',
  ),
};