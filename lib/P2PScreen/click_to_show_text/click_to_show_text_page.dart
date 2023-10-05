import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';
import 'package:test_ui/P2PScreen/click_to_show_text/widgets/text_shimmer_widgets.dart';
import 'package:test_ui/P2PScreen/click_to_show_text/widgets/text_tile_widgets.dart';
import 'package:test_ui/models/load_status.dart';

import 'click_to_show_text_cubit.dart';
import 'click_to_show_text_navigator.dart';


class ClickToShowTextPage extends StatelessWidget {

  const ClickToShowTextPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return ClickToShowTextCubit(
          navigator: ClickToShowTextNavigator(context: context),
        );
      },
      child: const ClickToShowTextChildPage(),
    );
  }
}

class ClickToShowTextChildPage extends StatefulWidget {
  const ClickToShowTextChildPage({Key? key}) : super(key: key);

  @override
  State<ClickToShowTextChildPage> createState() => _ClickToShowTextChildPageState();
}

class _ClickToShowTextChildPageState extends State<ClickToShowTextChildPage> {
  late final ClickToShowTextCubit _cubit;
  bool isTextVisible = false;

  @override
  void initState() {
    super.initState();
    _cubit = BlocProvider.of(context);
    _cubit.loadInitialData();
  }

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         centerTitle: true,
         leading: Icon(Icons.arrow_back),
         title: Text(
           'MSQUARE 소식',
           style: TextStyle(
             fontSize: 18,fontWeight: FontWeight.w700,color: Colors.black87
           ),
         ),
       ),
       body: SafeArea(
         child: _buildBodyWidget(),
       ),
     );
  }

  Widget _buildBodyWidget() {
    return LayoutBuilder(
        builder: (BuildContext context,BoxConstraints constraints) =>SingleChildScrollView(
          child: BlocBuilder<ClickToShowTextCubit,ClickToShowTextState>(builder: (context, state){
            return Column(
              children: [
                state.loadDataStatus == LoadStatus.loading
                ? Shimmer.fromColors(
                    child: Column(
                      children: [
                        TextShimmer(),
                      ],
                    ), baseColor: Colors.black12, highlightColor: Colors.white10
                )
                    : state.textlist.length == 0
                ? Container(
                  constraints: BoxConstraints(maxHeight: constraints.maxHeight),
                  child: Center(
                    child: Text(
                      "No Data",
                    ),
                  ),
                ) :ListView.builder(
                  itemCount: state.textlist.length,
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    itemBuilder: (context, index) {
                    var texts =state.textlist[index];
                    return TextTileWidgets(
                      param: texts,
                      onPressed: (){
                        _cubit.toggleDescription(index);
                      },
                    );
                    }
                )
              ],
            );
          }),
        )
    );
  }

  @override
  void dispose() {
    _cubit.close();
    super.dispose();
  }
}
