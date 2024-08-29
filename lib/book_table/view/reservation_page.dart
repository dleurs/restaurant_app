import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_app/book_table/view/cubit/book_table/book_table_cubit.dart';
import 'package:restaurant_app/shared/app_dimensions.dart';
import 'package:restaurant_app/shared/app_enum.dart';

class ReservationPage extends StatefulWidget {
  //TODO dleurs(#4): Shame to use Statefull for triggering cubit
  const ReservationPage({
    super.key,
  });

  @override
  State<ReservationPage> createState() => _ReservationPageState();
}

class _ReservationPageState extends State<ReservationPage> {
  @override
  void initState() {
    context.read<BookTableCubit>().getReservations();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        padding: EdgeInsetsDirectional.only(),
        leading: CupertinoNavigationBarBackButton(
          previousPageTitle: "When ?",
        ),
        middle: Text("Book a table"),
      ),
      child: SafeArea(
        child: BlocBuilder<BookTableCubit, BookTableState>(
          builder: (context, state) {
            switch (state.blocState) {
              case BlocState.init:
              case BlocState.loading:
                return const Center(child: CupertinoActivityIndicator());
              case BlocState.error:
                return const Text("An error occured");
              case BlocState.success:
                return const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: appHorizontalPadding,
                      ),
                      child: Text(
                        "Hello World",
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ],
                );
            }
          },
        ),
      ),
    );
  }
}
