import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marvel_comics_app/app/features/list_page/cubit/list_page_cubit.dart';
import 'package:marvel_comics_app/core/enums.dart';
import 'package:marvel_comics_app/data/remote_data_source.dart';
// import 'package:marvel_comics_app/models/single_comics_model.dart';
import 'package:marvel_comics_app/repositories/comics_repository.dart';

class ListPage extends StatelessWidget {
  const ListPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ListPageCubit(
        ComicsRepository(
          comicsRemoteDataSource: ComicsRemoteDataSource(),
        ),
      )
      ..start(),
      child: BlocBuilder<ListPageCubit, ListPageState>(
        builder: (context, state) {
          switch (state.status) {
            case Status.initial:
              return Center(
                child: Text(
                  'Initial state.',
                  style: GoogleFonts.teko(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              );
            case Status.loading:
              return const Center(
                child: CircularProgressIndicator(),
              );
            case Status.success:
              return const Center(
                child: Text('List Page'),
              );
            // ListView(
            //   children: [
            //     for (final comics in state.comicsModel)
            //       _ComicsWidget(comics: comics),
            //   ],
            // );
            case Status.error:
              return Center(
                child: Text(
                  'Something went wrong: ${state.errorMessage}',
                  style: GoogleFonts.teko(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              );
          }
        },
      ),
    );
  }
}

// class _ComicsWidget extends StatelessWidget {
//   const _ComicsWidget({
//     required this.comics,
//   });

//   final SingleComicsModel comics;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(
//         horizontal: 20,
//         vertical: 10,
//       ),
//       child: InkWell(
//         onTap: () {},
//         child: Container(
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(12),
//             color: const Color(0xff85c8c9),
//           ),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 comics.title,
//                 style: GoogleFonts.teko(
//                   color: Colors.white,
//                   fontSize: 32,
//                 ),
//               ),
//               const Padding(
//                 padding: EdgeInsets.only(right: 8.0),
//                 child: Icon(
//                   Icons.arrow_right,
//                   color: Colors.white,
//                   size: 32,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
