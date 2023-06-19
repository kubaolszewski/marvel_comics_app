import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marvel_comics_app/app/features/comic_details/comic_details_page.dart';
import 'package:marvel_comics_app/app/features/comic_details/cubit/comic_details_page_cubit.dart';
import 'package:marvel_comics_app/data/api_client.dart';
import 'package:marvel_comics_app/data/comics_remote_service.dart';
import 'package:marvel_comics_app/models/single_comic_model.dart';
import 'package:marvel_comics_app/repositories/comics_repository.dart';

class ComicWidget extends StatelessWidget {
  const ComicWidget({
    super.key,
    required this.comic,
  });

  final SingleComicModel comic;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => BlocProvider(
              create: (context) => ComicDetailsPageCubit(
                ComicsRepository(
                  comicsRemoteService: ComicsRemoteService.create(
                    ApiClient(),
                  ),
                ),
              ),
              child: ComicDetailsPage(comicDetails: comic),
            ),
          ),
        );
      },
      child: Card(
        elevation: 2,
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Container(
                width: 120,
                height: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  image: DecorationImage(
                    image: NetworkImage('${comic.image.path}.${comic.image.extension}'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Text(
                  comic.title,
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Icon(Icons.arrow_forward),
            ],
          ),
        ),
      ),
    );
  }
}
