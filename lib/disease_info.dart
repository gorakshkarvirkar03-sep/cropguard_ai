class DiseaseInfo {
  final String cause;
  final String symptoms;
  final String prevention;
  final String treatment;

  const DiseaseInfo({
    required this.cause,
    required this.symptoms,
    required this.prevention,
    required this.treatment,
  });
}

const String healthyTip =
    'Keep monitoring the crop every few days, water at the base '
    'of the plant, and remove any fallen or damaged leaves.';

// Keys must match the lines in assets/labels.txt exactly.
const Map<String, DiseaseInfo> diseaseInfo = {
  'Tomato___Late_blight': DiseaseInfo(
    cause: 'Fungus-like organism (Phytophthora infestans). Spreads fast '
        'in cool, wet, humid weather through wind and water splash.',
    symptoms: 'Dark, water-soaked patches on leaves that turn brown. '
        'White fuzzy growth under the leaf in humid weather. Firm brown '
        'rot on fruit.',
    prevention: 'Use resistant varieties. Give plants space for airflow. '
        'Water at the base, not on leaves. Remove infected plants early. '
        'Rotate crops.',
    treatment: 'Remove and destroy infected leaves and plants. Spray a '
        'recommended fungicide as soon as symptoms appear.',
  ),
  'Tomato___Early_blight': DiseaseInfo(
    cause: 'Fungus (Alternaria solani). Common in warm, humid weather '
        'and survives in old plant debris and soil.',
    symptoms: 'Brown spots with ring-like (target) patterns, mostly on '
        'older lower leaves. Leaves turn yellow and drop. Dark sunken '
        'spots near the fruit stem.',
    prevention: 'Rotate crops each season. Mulch the soil. Remove plant '
        'debris after harvest. Avoid wetting leaves. Keep plants well '
        'fed and watered.',
    treatment: 'Remove affected lower leaves. Use a recommended '
        'fungicide if the disease keeps spreading.',
  ),
  'Tomato___Bacterial_spot': DiseaseInfo(
    cause: 'Bacteria (Xanthomonas). Spreads by splashing water, '
        'infected seed and wet hands or tools.',
    symptoms: 'Small dark, water-soaked spots on leaves, often with a '
        'yellow edge. Rough, scabby spots on fruit.',
    prevention: 'Use disease-free seed and seedlings. Do not handle '
        'wet plants. Rotate crops. Clean tools.',
    treatment: 'Remove badly affected leaves. Copper-based sprays can '
        'slow spread, but results are limited once the disease is heavy.',
  ),
  'Tomato___Leaf_Mold': DiseaseInfo(
    cause: 'Fungus (Passalora fulva). Needs high humidity, common in '
        'greenhouses and crowded plantings.',
    symptoms: 'Pale yellow patches on the upper leaf surface with an '
        'olive-green to grey velvety mold underneath.',
    prevention: 'Improve ventilation. Space plants well. Avoid '
        'overhead watering. Choose resistant varieties.',
    treatment: 'Remove infected leaves, reduce humidity, and use a '
        'recommended fungicide if needed.',
  ),
  'Tomato___healthy': DiseaseInfo(
    cause: 'No disease detected.',
    symptoms: 'The leaf looks healthy.',
    prevention: healthyTip,
    treatment: 'No treatment needed.',
  ),
  'Potato___Early_blight': DiseaseInfo(
    cause: 'Fungus (Alternaria solani). Favoured by warm weather, '
        'alternating wet and dry periods, and stressed plants.',
    symptoms: 'Dark brown spots with ring patterns on older leaves, '
        'yellowing around the spots, and early leaf drop.',
    prevention: 'Rotate crops. Use healthy seed tubers. Keep plants '
        'well fertilised and watered. Remove debris after harvest.',
    treatment: 'Remove affected leaves and use a recommended '
        'fungicide if the disease spreads.',
  ),
  'Potato___Late_blight': DiseaseInfo(
    cause: 'Fungus-like organism (Phytophthora infestans). Spreads '
        'quickly in cool, wet weather. This is the disease behind '
        'the Irish potato famine.',
    symptoms: 'Dark, water-soaked patches on leaves and stems, white '
        'mold underneath in humid weather, and brown rot in tubers.',
    prevention: 'Use certified disease-free seed. Choose resistant '
        'varieties. Hill soil well over tubers. Destroy volunteer '
        'plants and cull piles.',
    treatment: 'Remove infected plants quickly. Use a recommended '
        'fungicide before and during wet weather.',
  ),
  'Potato___healthy': DiseaseInfo(
    cause: 'No disease detected.',
    symptoms: 'The leaf looks healthy.',
    prevention: healthyTip,
    treatment: 'No treatment needed.',
  ),
  'Apple__Apple_scab': DiseaseInfo(
    cause: 'Fungus (Venturia inaequalis). Spreads in cool, wet spring '
        'weather from infected fallen leaves.',
    symptoms: 'Olive-green to brown velvety spots on leaves and dark, '
        'scabby patches on fruit.',
    prevention: 'Rake and destroy fallen leaves. Prune for airflow. '
        'Plant resistant varieties.',
    treatment: 'Use a recommended fungicide on a timely schedule from '
        'early spring.',
  ),
  'Apple__Black_rot': DiseaseInfo(
    cause: 'Fungus (Botryosphaeria obtusa). Lives in dead wood, '
        'cankers and old fruit on the tree.',
    symptoms: 'Brown "frog-eye" spots on leaves, rotting fruit that '
        'turns black, and rough cankers on branches.',
    prevention: 'Prune out dead wood and cankers. Remove mummified '
        'fruit. Keep the orchard clean.',
    treatment: 'Cut out infected branches and use a recommended '
        'fungicide during the growing season.',
  ),
  'Corn_(maize)___Common_rust_': DiseaseInfo(
    cause: 'Fungus (Puccinia sorghi). Spreads by wind in cool, '
        'moist weather.',
    symptoms: 'Small reddish-brown powdery pustules on both sides '
        'of the leaf.',
    prevention: 'Plant resistant hybrids. Plant on time. '
        'Monitor fields regularly.',
    treatment: 'A recommended fungicide may be used if infection '
        'is severe on young plants.',
  ),
  'Pepper,_bell___Bacterial_spot': DiseaseInfo(
    cause: 'Bacteria (Xanthomonas). Spreads by splashing water, '
        'infected seed and tools.',
    symptoms: 'Small water-soaked spots that turn brown, leaf drop, '
        'and raised rough spots on fruit.',
    prevention: 'Use clean seed. Rotate crops. Avoid working in '
        'wet fields. Do not water overhead.',
    treatment: 'Remove badly affected plants. Copper-based sprays '
        'can help slow spread.',
  ),
};