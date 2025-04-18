import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class FullMapPage extends StatelessWidget {
  final LatLng location;
  final String title;
  final String locationName;

  const FullMapPage({
    Key? key,
    required this.location,
    required this.title,
    required this.locationName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Map Wisata: $title'),
        backgroundColor: Colors.tealAccent,
      ),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: location,
          zoom: 13, // Adjust the zoom level
        ),
        markers: createMarkers(),
        zoomControlsEnabled: true,
        myLocationEnabled: true,
        myLocationButtonEnabled: true,
      ),
    );
  }

  // Add multiple markers here for tourist spots in the same location
  Set<Marker> createMarkers() {
    Set<Marker> markers = {};

    // First add the main marker for the selected location
    markers.add(Marker(
      markerId: MarkerId(title),
      position: location,
      infoWindow: InfoWindow(
        title: title,
        snippet: locationName,
      ),
    ));

    // Add all attraction markers based on region

    // Bukittinggi (Sumatera Barat) markers
    if (locationName.contains('Bukittinggi') || locationName.contains('Sumatera Barat')) {
      markers.addAll({
        Marker(
          markerId: const MarkerId("JamGadang"),
          position: const LatLng(-0.3047564, 100.3675407), // Corrected Jam Gadang coordinates
          infoWindow: const InfoWindow(
            title: 'Jam Gadang',
            snippet: 'Landmark kota Bukittinggi, Sumatera Barat',
          ),
        ),
        Marker(
          markerId: const MarkerId("NgaraiSianok"),
          position: const LatLng(-0.3096276, 100.3631664), // Ngarai Sianok coordinates
          infoWindow: const InfoWindow(
            title: 'Ngarai Sianok',
            snippet: 'Lembah yang indah di Bukittinggi, Sumatera Barat',
          ),
        ),
        Marker(
          markerId: const MarkerId("BentengFortDeKock"),
          position: const LatLng(-0.3053831, 100.3676773), // Fort de Kock coordinates
          infoWindow: const InfoWindow(
            title: 'Benteng Fort de Kock',
            snippet: 'Peninggalan sejarah di Bukittinggi, Sumatera Barat',
          ),
        ),
        Marker(
          markerId: const MarkerId("LobangJepang"),
          position: const LatLng(-0.3039568, 100.3652349), // Lobang Jepang coordinates
          infoWindow: const InfoWindow(
            title: 'Lobang Jepang',
            snippet: 'Terowongan peninggalan Jepang di Bukittinggi',
          ),
        ),
        Marker(
          markerId: const MarkerId("TamanMargasatwa"),
          position: const LatLng(-0.3052928, 100.3614523), // Taman Margasatwa coordinates
          infoWindow: const InfoWindow(
            title: 'Taman Margasatwa dan Budaya Kinantan',
            snippet: 'Kebun binatang di Bukittinggi',
          ),
        ),
      });
    }

    // Borobudur & Yogyakarta area markers
    if (locationName.contains('Magelang') || locationName.contains('Jawa Tengah') || title.contains('Borobudur')) {
      markers.addAll({
        Marker(
          markerId: const MarkerId("BorobudurTemple"),
          position: const LatLng(-7.6079, 110.2025), // Borobudur Temple coordinates
          infoWindow: const InfoWindow(
            title: 'Candi Borobudur',
            snippet: 'Magelang, Jawa Tengah',
          ),
        ),
        Marker(
          markerId: const MarkerId("PrambananTemple"),
          position: const LatLng(-7.7520, 110.4914), // Prambanan Temple coordinates
          infoWindow: const InfoWindow(
            title: 'Candi Prambanan',
            snippet: 'Yogyakarta, Jawa Tengah',
          ),
        ),
        Marker(
          markerId: const MarkerId("MalioboroStreet"),
          position: const LatLng(-7.7956, 110.3695), // Malioboro Street coordinates
          infoWindow: const InfoWindow(
            title: 'Jalan Malioboro',
            snippet: 'Yogyakarta, Jawa Tengah',
          ),
        ),
        Marker(
          markerId: const MarkerId("KratonYogyakarta"),
          position: const LatLng(-7.8052, 110.3644), // Kraton coordinates
          infoWindow: const InfoWindow(
            title: 'Keraton Yogyakarta',
            snippet: 'Yogyakarta, Jawa Tengah',
          ),
        ),
        Marker(
          markerId: const MarkerId("TamanSari"),
          position: const LatLng(-7.8100, 110.3594), // Taman Sari coordinates
          infoWindow: const InfoWindow(
            title: 'Taman Sari',
            snippet: 'Yogyakarta, Jawa Tengah',
          ),
        ),
      });
    }

    // Labuan Bajo & Komodo National Park markers
    if (locationName.contains('Labuan Bajo') || locationName.contains('Nusa Tenggara')) {
      markers.addAll({
        Marker(
          markerId: const MarkerId("LabuanBajo"),
          position: const LatLng(-8.4867, 119.8895), // Labuan Bajo coordinates
          infoWindow: const InfoWindow(
            title: 'Labuan Bajo',
            snippet: 'Nusa Tenggara Timur',
          ),
        ),
        Marker(
          markerId: const MarkerId("KomodoIsland"),
          position: const LatLng(-8.5503, 119.4389), // Komodo Island coordinates
          infoWindow: const InfoWindow(
            title: 'Pulau Komodo',
            snippet: 'Taman Nasional Komodo, NTT',
          ),
        ),
        Marker(
          markerId: const MarkerId("PadarIsland"),
          position: const LatLng(-8.6513, 119.5912), // Padar Island coordinates
          infoWindow: const InfoWindow(
            title: 'Pulau Padar',
            snippet: 'Taman Nasional Komodo, NTT',
          ),
        ),
        Marker(
          markerId: const MarkerId("PinkBeach"),
          position: const LatLng(-8.5846, 119.5023), // Pink Beach coordinates
          infoWindow: const InfoWindow(
            title: 'Pantai Pink',
            snippet: 'Komodo, Nusa Tenggara Timur',
          ),
        ),
        Marker(
          markerId: const MarkerId("RincaIsland"),
          position: const LatLng(-8.6616, 119.7077), // Rinca Island coordinates
          infoWindow: const InfoWindow(
            title: 'Pulau Rinca',
            snippet: 'Taman Nasional Komodo, NTT',
          ),
        ),
      });
    }

    // Bromo area markers
    if (locationName.contains('Probolinggo') || locationName.contains('Jawa Timur') || title.contains('Bromo')) {
      markers.addAll({
        Marker(
          markerId: const MarkerId("GunungBromo"),
          position: const LatLng(-7.9425, 112.9530), // Mount Bromo coordinates
          infoWindow: const InfoWindow(
            title: 'Gunung Bromo',
            snippet: 'Probolinggo, Jawa Timur',
          ),
        ),
        Marker(
          markerId: const MarkerId("Penanjakan"),
          position: const LatLng(-7.9162, 112.9535), // Penanjakan coordinates
          infoWindow: const InfoWindow(
            title: 'Penanjakan',
            snippet: 'Spot matahari terbit, Bromo',
          ),
        ),
        Marker(
          markerId: const MarkerId("LautPasir"),
          position: const LatLng(-7.9403, 112.9508), // Laut Pasir coordinates
          infoWindow: const InfoWindow(
            title: 'Lautan Pasir',
            snippet: 'Taman Nasional Bromo Tengger Semeru',
          ),
        ),
        Marker(
          markerId: const MarkerId("GunungSemeru"),
          position: const LatLng(-8.1077, 112.9220), // Mount Semeru coordinates
          infoWindow: const InfoWindow(
            title: 'Gunung Semeru',
            snippet: 'Gunung tertinggi di Pulau Jawa',
          ),
        ),
        Marker(
          markerId: const MarkerId("PuraLuhurPoten"),
          position: const LatLng(-7.9418, 112.9521), // Pura Luhur Poten coordinates
          infoWindow: const InfoWindow(
            title: 'Pura Luhur Poten',
            snippet: 'Pura Hindu di Bromo',
          ),
        ),
      });
    }

    // Bali markers
    if (locationName.contains('Bali') || locationName.contains('Bedugul')) {
      markers.addAll({
        Marker(
          markerId: const MarkerId("PuraUlunDanuBeratan"),
          position: const LatLng(-8.2751, 115.1670), // Pura Ulun Danu Beratan coordinates
          infoWindow: const InfoWindow(
            title: 'Pura Ulun Danu Beratan',
            snippet: 'Bedugul, Bali',
          ),
        ),
        Marker(
          markerId: const MarkerId("TanahLot"),
          position: const LatLng(-8.6219, 115.0864), // Tanah Lot coordinates
          infoWindow: const InfoWindow(
            title: 'Pura Tanah Lot',
            snippet: 'Tabanan, Bali',
          ),
        ),
        Marker(
          markerId: const MarkerId("UbudMonkeyForest"),
          position: const LatLng(-8.5182, 115.2591), // Ubud Monkey Forest coordinates
          infoWindow: const InfoWindow(
            title: 'Monkey Forest Ubud',
            snippet: 'Ubud, Bali',
          ),
        ),
        Marker(
          markerId: const MarkerId("KutaBeach"),
          position: const LatLng(-8.7180, 115.1686), // Kuta Beach coordinates
          infoWindow: const InfoWindow(
            title: 'Pantai Kuta',
            snippet: 'Kuta, Bali',
          ),
        ),
        Marker(
          markerId: const MarkerId("PuraBesakih"),
          position: const LatLng(-8.3738, 115.4479), // Besakih Temple coordinates
          infoWindow: const InfoWindow(
            title: 'Pura Besakih',
            snippet: 'Karangasem, Bali',
          ),
        ),
      });
    }

    // Danau Toba markers
    if (locationName.contains('Sumatera Utara') || title.contains('Toba')) {
      markers.addAll({
        Marker(
          markerId: const MarkerId("DanauToba"),
          position: const LatLng(2.6843, 98.8762), // Lake Toba coordinates
          infoWindow: const InfoWindow(
            title: 'Danau Toba',
            snippet: 'Sumatera Utara',
          ),
        ),
        Marker(
          markerId: const MarkerId("PulauSamosir"),
          position: const LatLng(2.5833, 98.8333), // Samosir Island coordinates
          infoWindow: const InfoWindow(
            title: 'Pulau Samosir',
            snippet: 'Danau Toba, Sumatera Utara',
          ),
        ),
        Marker(
          markerId: const MarkerId("TuktukSiadong"),
          position: const LatLng(2.6707, 98.8560), // Tuktuk Siadong coordinates
          infoWindow: const InfoWindow(
            title: 'Tuktuk Siadong',
            snippet: 'Desa wisata di Samosir',
          ),
        ),
        Marker(
          markerId: const MarkerId("AirTerjunSipiso"),
          position: const LatLng(2.7529, 98.8081), // Sipiso-piso waterfall coordinates
          infoWindow: const InfoWindow(
            title: 'Air Terjun Sipiso-piso',
            snippet: 'Karo, Sumatera Utara',
          ),
        ),
        Marker(
          markerId: const MarkerId("BukitGundaling"),
          position: const LatLng(3.1914, 98.5046), // Bukit Gundaling coordinates
          infoWindow: const InfoWindow(
            title: 'Bukit Gundaling',
            snippet: 'Berastagi, Sumatera Utara',
          ),
        ),
      });
    }

    // Tana Toraja markers
    if (locationName.contains('Toraja') || locationName.contains('Sulawesi Selatan')) {
      markers.addAll({
        Marker(
          markerId: const MarkerId("TanaToraja"),
          position: const LatLng(-3.0756, 119.8271), // Tana Toraja coordinates
          infoWindow: const InfoWindow(
            title: 'Tana Toraja',
            snippet: 'Sulawesi Selatan',
          ),
        ),
        Marker(
          markerId: const MarkerId("KeteKesu"),
          position: const LatLng(-2.9707, 119.8654), // Kete Kesu coordinates
          infoWindow: const InfoWindow(
            title: 'Kete Kesu',
            snippet: 'Desa tradisional Toraja',
          ),
        ),
        Marker(
          markerId: const MarkerId("LondoSolo"),
          position: const LatLng(-2.9593, 119.8701), // Londo Solo coordinates
          infoWindow: const InfoWindow(
            title: 'Londo Solo',
            snippet: 'Situs pemakaman tradisional Toraja',
          ),
        ),
        Marker(
          markerId: const MarkerId("BatuloKada"),
          position: const LatLng(-2.8639, 119.9479), // Batutumonga coordinates
          infoWindow: const InfoWindow(
            title: 'Batutumonga',
            snippet: 'Pemandangan pegunungan Toraja',
          ),
        ),
        Marker(
          markerId: const MarkerId("LemoGraves"),
          position: const LatLng(-3.0372, 119.8517), // Lemo coordinates
          infoWindow: const InfoWindow(
            title: 'Lemo',
            snippet: 'Kuburan batu di tebing Toraja',
          ),
        ),
      });
    }

    // Derawan Islands markers
    if (locationName.contains('Derawan') || locationName.contains('Kalimantan')) {
      markers.addAll({
        Marker(
          markerId: const MarkerId("PulauDerawan"),
          position: const LatLng(2.2696, 118.2401), // Derawan Island coordinates
          infoWindow: const InfoWindow(
            title: 'Pulau Derawan',
            snippet: 'Kalimantan Timur',
          ),
        ),
        Marker(
          markerId: const MarkerId("PulauMaratua"),
          position: const LatLng(2.2276, 118.5754), // Maratua Island coordinates
          infoWindow: const InfoWindow(
            title: 'Pulau Maratua',
            snippet: 'Kepulauan Derawan, Kalimantan Timur',
          ),
        ),
        Marker(
          markerId: const MarkerId("PulauKakaban"),
          position: const LatLng(2.1436, 118.5277), // Kakaban Island coordinates
          infoWindow: const InfoWindow(
            title: 'Pulau Kakaban',
            snippet: 'Danau ubur-ubur, Kalimantan Timur',
          ),
        ),
        Marker(
          markerId: const MarkerId("PulauSangalaki"),
          position: const LatLng(2.0967, 118.3955), // Sangalaki Island coordinates
          infoWindow: const InfoWindow(
            title: 'Pulau Sangalaki',
            snippet: 'Penangkaran penyu, Kalimantan Timur',
          ),
        ),
        Marker(
          markerId: const MarkerId("GunungTabur"),
          position: const LatLng(2.1400, 117.4367), // Gunung Tabur coordinates
          infoWindow: const InfoWindow(
            title: 'Gunung Tabur',
            snippet: 'Berau, Kalimantan Timur',
          ),
        ),
      });
    }

    return markers;
  }
}