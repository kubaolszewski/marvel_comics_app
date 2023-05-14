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
                Expanded(
                  child: Scrollbar(
                    child: SingleChildScrollView(
                      child: Text(
                        comicDetails.description!.isNotEmpty
                            ? comicDetails.description!
                            : 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque dictum sagittis nisi at sollicitudin. Quisque ac condimentum nunc, a efficitur dolor. Nunc bibendum, tortor vel euismod faucibus, sapien odio egestas nulla, sed pretium ante libero sit amet libero. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Praesent tincidunt metus vel nunc congue, in malesuada neque posuere. Cras bibendum lectus turpis, eget eleifend metus finibus rhoncus. Mauris laoreet, odio a luctus eleifend, turpis tellus aliquet nibh, a facilisis nisi felis ut ex. Fusce non nisl blandit, egestas ante vel, maximus ligula. Nunc laoreet felis nisi, eget mattis augue cursus id. Vivamus vel condimentum eros. Ut hendrerit rutrum nibh in interdum. Suspendisse potenti. Aenean consectetur velit ipsum, quis tempus sapien volutpat id. Nullam eu lobortis nibh. Vestibulum mollis, lorem at sodales sagittis, mi orci vestibulum diam, ac varius ligula augue eget eros. Nam accumsan vel diam eget congue. Sed bibendum purus eu euismod porttitor. Mauris vel elit at magna sagittis fermentum. Morbi magna elit, eleifend id ipsum a, lobortis venenatis tortor.',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
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
                          'Find out more',
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
