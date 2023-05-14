import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marvel_comics_app/models/single_comic_model.dart';

class ComicDetails extends StatelessWidget {
  const ComicDetails({super.key, required this.comicDetails});

  final SingleComicModel comicDetails;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.red,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          comicDetails.title,
          style: GoogleFonts.poppins(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Stack(
        children: [
          Image.network(
            comicDetails.image,
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Container(
            padding: const EdgeInsets.all(16),
            color: Colors.black.withOpacity(0.7),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  comicDetails.title,
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 16),
                if (comicDetails.description != null &&
                    comicDetails.description!.isNotEmpty)
                  Expanded(
                    child: Scrollbar(
                      child: SingleChildScrollView(
                        child: Text(
                          comicDetails.description!,
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                if (comicDetails.description == null &&
                    comicDetails.description!.isEmpty)
                  Container(height: 200),
                const SizedBox(height: 16),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 12,
                      horizontal: 16,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'View More',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 8),
                        const Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
