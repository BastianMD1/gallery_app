import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'dart:html' as html;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SunnyDustPage',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 184, 149, 10)),
        useMaterial3: true,
      ),
      home: const GalleryPage(),
    );
  }
}

class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 33, 2, 85),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.person), text: 'About me'),
              Tab(icon: Icon(Icons.info), text: 'Commission info'),
              Tab(icon: Icon(Icons.contact_mail), text: 'Contact'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            ContentPage(
              insertedTexts: [
                /* ÍNDICE 0 - Texto de introducción */
                '¡Hola! Soy un artista apasionado por crear ilustraciones únicas y memorables. \n\nMe especializo en arte digital y diseño de personajes, con un enfoque particular en escenas de acción y fantasía. \n\nCada obra que creo busca contar una historia y transmitir emociones a través de los detalles y la composición.',
                /* ÍNDICE 1 - Texto de contacto */
                'Puedes contactarme a través de mi correo electrónico: \n\narti@sunny-dust.com',
              ],
              imageUrls: [
                // [0]→2 Primera imagen
                'assets/images/ArtiJump.png',
                // [1]→3 Segunda imagen
                'assets/images/HunterRL.png',
                // [2]→4 Tercera imagen
                'assets/images/HollowKnight.png',
              ],
              imageTitles: [
                // [0] Para primera imagen
                'Artificer Jumping',
                // [1] Para segunda imagen
                'Hunter VS Red Lizard',
                // [2] Para tercera imagen
                'Hollow Knight',
              ],
              descriptions: [
                '[0] Un artificer saltando hacia su objetivo con determinación, mostrando su agilidad y destreza en el combate.',      // Para imagen [0]
                '[1] El cazador enfrentándose a un temible lagarto rojo, una batalla épica que pone a prueba sus habilidades.',       // Para imagen [1]
                '[2] El caballero hueco en toda su gloria, preparado para enfrentar los desafíos que le esperan.',                    // Para imagen [2]
              ],
              showDescriptions: [false, false, false],
              showTitles: [false, false, false],
              imageSizes: [0.35, 0.5, 0.5],
              imageAlignments: [
                Alignment.center,
                Alignment.center,
                Alignment.center,
              ],
              contentOrder: [0, 2, 3, 4, 1],
              rowGroups: [
                [0, 2],
                [3, 4]
              ],
            ),
            ContentPage(
              insertedTexts: [
                // [0]→0 Primer texto
                'Información sobre comisiones y precios:\n\nIlustración completa (personaje + fondo detallado): 80€\n\nPersonaje simple: 45€\n\nBusto detallado: 35€',
                // [1]→1 Segundo texto
                'El tiempo de entrega varía entre 1-2 semanas dependiendo de la complejidad del proyecto.',
                // [2]→2 Tercer texto
                'Todos los precios incluyen 2 rondas de revisiones para asegurar tu satisfacción.',
              ],
              imageUrls: [
                // [3]→3 Primera imagen
                'assets/images/CateMeowdySittingNE.png',
                // [4]→4 Segunda imagen
                'assets/images/KalypsoDTYS.png',
                // [5]→5 Tercera imagen
                'assets/images/RalseiSmiling.png',
              ],
              imageTitles: [
                'Cate Meowdy Sitting',
                'Kalypso DTYS',
                'Ralsei Smiling',
              ],
              descriptions: [
                'Un momento tranquilo con Cate Meowdy, mostrando su lado más sereno y contemplativo.',      // [3]→3 Para imagen [0]
                'Kalypso en una pose dinámica, capturando su personalidad única y energética.',          // [4]→4 Para imagen [1]
                'La dulce sonrisa de Ralsei ilumina cualquier situación, trayendo alegría a todos.',      // [5]→5 Para imagen [2]
              ],
              showDescriptions: [false, false, false],
              showTitles: [false, false, false],
              imageSizes: [0.35, 0.35, 0.5],
              imageAlignments: [
                Alignment.center,
                Alignment.center,
                Alignment.center,
              ],
              contentOrder: [0, 1, 3, 4, 2, 5],
              rowGroups: [
                [0, 1],
                [3, 4],
              ],
            ),
            ContentPage(
              insertedTexts: [
                // [0]→0 Primer texto
                '¡Contáctame para discutir tu proyecto! \n\nEmail: artista@ejemplo.com\n\nDiscord: Artista#1234',
                // [1]→1 Segundo texto
                'También puedes encontrarme en:\n\nTwitter: @artista\n\nInstagram: @artista_digital',
              ],
              imageUrls: [
                // [2]→2 Primera imagen
                'assets/images/ArtiJump.png',
                // [3]→3 Segunda imagen
                'assets/images/HollowKnight.png',
                // [4]→4 Tercera imagen
                'assets/images/HunterRL.png',
              ],
              imageTitles: [
                // [2]→2 Para primera imagen
                'Artificer Jumping',
                // [3]→3 Para segunda imagen
                'Hollow Knight',
                // [4]→4 Para tercera imagen
                'Hunter VS Red Lizard',
              ],
              descriptions: [
                'Una vista diferente del artificer en acción, capturando la intensidad del momento.',      // Para imagen [2]
                'El caballero hueco en una pose icónica, simbolizando su determinación.',                  // Para imagen [3]
                'Otra perspectiva de la épica batalla entre el cazador y el lagarto rojo.',               // Para imagen [4]
              ],
              showDescriptions: [false, false, false],
              showTitles: [false, false, false],
              imageSizes: [0.5, 0.5, 0.5],
              imageAlignments: [
                Alignment.center,
                Alignment.center,
                Alignment.center,
              ],
              contentOrder: [0, 1, 2, 3, 4],
              rowGroups: [
                [0, 1],
                [3, 4],
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ContentPage extends StatefulWidget {
  final List<String> imageUrls;
  final List<String> imageTitles;
  final List<String> descriptions;
  final List<bool> showDescriptions;
  final List<bool> showTitles;
  final List<double> imageSizes;
  final List<Alignment> imageAlignments;
  final List<String> insertedTexts;
  final List<int> contentOrder;
  final List<List<int>> rowGroups;

  const ContentPage({
    super.key,
    required this.imageUrls,
    required this.imageTitles,
    required this.descriptions,
    this.showDescriptions = const [],
    this.showTitles = const [],
    this.imageSizes = const [],
    this.imageAlignments = const [],
    this.insertedTexts = const [],
    this.contentOrder = const [],
    this.rowGroups = const [],
  });

  @override
  State<ContentPage> createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  List<String> localImageUrls = [];
  List<String> localImageTitles = [];
  Map<String, double> imageAspectRatios = {}; // Para almacenar las proporciones de las imágenes

  @override
  void initState() {
    super.initState();
    _loadImageAspectRatios();
  }

  Future<void> _loadImageAspectRatios() async {
    for (String imageUrl in widget.imageUrls) {
      final image = AssetImage(imageUrl);
      final imageStream = image.resolve(ImageConfiguration.empty);
      
      imageStream.addListener(ImageStreamListener((info, _) {
        setState(() {
          imageAspectRatios[imageUrl] = info.image.width / info.image.height;
        });
      }));
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<void> _pickImage() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.image,
      allowMultiple: false,
    );

    if (result != null) {
      // Crear URL para la imagen local
      final bytes = result.files.first.bytes!;
      final blob = html.Blob([bytes]);
      final url = html.Url.createObjectUrlFromBlob(blob);
      
      // Mostrar diálogo para el título
      String? title = await showDialog<String>(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Agregar título'),
          content: TextField(
            decoration: const InputDecoration(
              hintText: 'Ingresa un título para la imagen',
            ),
            onSubmitted: (value) => Navigator.of(context).pop(value),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(null),
              child: const Text('Cancelar'),
            ),
            TextButton(
              onPressed: () {
                final textField = context.findRenderObject() as RenderBox;
                Navigator.of(context).pop(textField.toString());
              },
              child: const Text('Aceptar'),
            ),
          ],
        ),
      );

      if (title != null && title.isNotEmpty) {
        setState(() {
          localImageUrls.insert(0, url);
          localImageTitles.insert(0, title);
        });
      }
    }
  }

  bool shouldShowDescription(int index) {
    if (widget.showDescriptions.isEmpty) return true;
    return index < widget.showDescriptions.length ? widget.showDescriptions[index] : true;
  }

  double getImageSize(int index) {
    if (widget.imageSizes.isEmpty) return 1.0;
    return index < widget.imageSizes.length ? widget.imageSizes[index] : 1.0;
  }

  Alignment getImageAlignment(int index) {
    if (widget.imageAlignments.isEmpty) return Alignment.center;
    return index < widget.imageAlignments.length ? widget.imageAlignments[index] : Alignment.center;
  }

  List<Widget> getOrderedContent() {
    final List<Widget> allContent = [];
    
    // Añadir textos insertados
    for (int i = 0; i < widget.insertedTexts.length; i++) {
      allContent.add(
        Card(
          elevation: 2,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              widget.insertedTexts[i],
              style: const TextStyle(
                fontSize: 16,
                height: 1.5,
              ),
            ),
          ),
        ),
      );
    }

    // Añadir imágenes
    for (int i = 0; i < widget.imageUrls.length; i++) {
      final imageUrl = widget.imageUrls[i];
      final imageTitle = i < widget.imageTitles.length ? widget.imageTitles[i] : '';
      final description = i < widget.descriptions.length ? widget.descriptions[i] : '';
      final showDescription = i < widget.showDescriptions.length ? widget.showDescriptions[i] : false;
      final showTitle = i < widget.showTitles.length ? widget.showTitles[i] : true;
      final imageSize = i < widget.imageSizes.length ? widget.imageSizes[i] : 1.0;
      final imageAlignment = i < widget.imageAlignments.length ? widget.imageAlignments[i] : Alignment.center;

      allContent.add(
        buildImageContent(
          imageUrl,
          imageTitle,
          description,
          showDescription,
          showTitle,
          imageSize,
          imageAlignment,
          false,
        ),
      );
    }

    if (widget.contentOrder.isEmpty) {
      return allContent;
    }

    // Procesar elementos según el orden y los grupos de filas
    final List<Widget> orderedContent = [];
    List<int> currentRow = [];
    Set<int> processedIndices = {}; // Para evitar duplicados
    
    for (int index in widget.contentOrder) {
      if (processedIndices.contains(index)) continue; // Saltar si ya fue procesado
      
      // Buscar si este índice pertenece a algún grupo de fila
      bool foundInRow = false;
      for (List<int> rowGroup in widget.rowGroups) {
        if (rowGroup.contains(index)) {
          // Si encontramos el índice en un grupo, procesamos todo el grupo
          if (currentRow != rowGroup) {
            if (currentRow.isNotEmpty) {
              // Añadir la fila anterior si existe
              orderedContent.add(
                Padding(
                  padding: const EdgeInsets.only(bottom: 32),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: currentRow
                        .map((i) => Expanded(child: allContent[i]))
                        .toList(),
                  ),
                ),
              );
            }
            currentRow = rowGroup;
          }
          foundInRow = true;
          processedIndices.addAll(rowGroup); // Marcar todos los índices del grupo como procesados
          break;
        }
      }
      
      if (!foundInRow) {
        // Si el elemento no está en ningún grupo de fila
        if (currentRow.isNotEmpty) {
          // Añadir la fila anterior si existe
          orderedContent.add(
            Padding(
              padding: const EdgeInsets.only(bottom: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: currentRow
                    .map((i) => Expanded(child: allContent[i]))
                    .toList(),
              ),
            ),
          );
          currentRow = [];
        }
        // Añadir el elemento individual
        if (index < allContent.length && !processedIndices.contains(index)) {
          orderedContent.add(allContent[index]);
          processedIndices.add(index);
        }
      }
    }
    
    // Añadir la última fila si quedó pendiente
    if (currentRow.isNotEmpty) {
      orderedContent.add(
        Padding(
          padding: const EdgeInsets.only(bottom: 32),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: currentRow
                .map((i) => Expanded(child: allContent[i]))
                .toList(),
          ),
        ),
      );
    }

    return orderedContent;
  }

  Widget buildImageContent(
    String imageUrl,
    String imageTitle,
    String description,
    bool showDescription,
    bool showTitle,
    double imageSize,
    Alignment imageAlignment,
    bool isLocalImage,
  ) {
    // Obtener la proporción de la imagen o usar 16/9 como fallback
    final aspectRatio = imageAspectRatios[imageUrl] ?? 16/9;

    return Padding(
      padding: const EdgeInsets.only(bottom: 32),
      child: showDescription 
        ? Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Card(
                  elevation: 4,
                  child: Container(
                    constraints: const BoxConstraints(minHeight: 200),
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (showTitle) Text(
                          imageTitle,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        if (showTitle) const SizedBox(height: 8),
                        Text(
                          description,
                          style: const TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                flex: 2,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => FullScreenImage(
                          imageUrl: imageUrl,
                          isLocalImage: isLocalImage,
                        ),
                      ),
                    );
                  },
                  child: Card(
                    elevation: 4,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: Container(
                        width: MediaQuery.of(context).size.width * imageSize,
                        child: AspectRatio(
                          aspectRatio: aspectRatio,
                          child: isLocalImage
                              ? Image.network(
                                  imageUrl,
                                  fit: BoxFit.contain,
                                  alignment: imageAlignment,
                                )
                              : Image.asset(
                                  imageUrl,
                                  fit: BoxFit.contain,
                                  alignment: imageAlignment,
                                ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        : GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => FullScreenImage(
                    imageUrl: imageUrl,
                    isLocalImage: isLocalImage,
                  ),
                ),
              );
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (showTitle) Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    imageTitle,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Center(
                  child: Card(
                    elevation: 4,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: Container(
                        width: MediaQuery.of(context).size.width * imageSize,
                        child: AspectRatio(
                          aspectRatio: aspectRatio,
                          child: isLocalImage
                              ? Image.network(
                                  imageUrl,
                                  fit: BoxFit.contain,
                                  alignment: imageAlignment,
                                )
                              : Image.asset(
                                  imageUrl,
                                  fit: BoxFit.contain,
                                  alignment: imageAlignment,
                                ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final orderedContent = getOrderedContent();
    
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => orderedContent[index],
              childCount: orderedContent.length,
            ),
          ),
        ),
      ],
    );
  }
}

class FullScreenImage extends StatelessWidget {
  final String imageUrl;
  final bool isLocalImage;

  const FullScreenImage({
    super.key,
    required this.imageUrl,
    required this.isLocalImage,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: isLocalImage
            ? Image.network(
                imageUrl,
                fit: BoxFit.contain,
              )
            : Image.asset(
                imageUrl,
                fit: BoxFit.contain,
              ),
      ),
    );
  }
} 