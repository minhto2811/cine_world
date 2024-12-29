import 'package:cine_world/core/extensions/context.dart';
import 'package:cine_world/generated/l10n.dart';
import 'package:flutter/material.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key, this.onSearch, this.onTap, this.onSpeech});

  final void Function(String)? onSearch;
  final VoidCallback? onTap;
  final VoidCallback? onSpeech;

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView>
    with SingleTickerProviderStateMixin {
  late TextEditingController _controller;
  late FocusNode _focusNode;

  late AnimationController _animationController;
  late Animation<double> _tweenAnimation;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _controller = TextEditingController();
    _controller.addListener(_listener);
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 60),
    );
    _tweenAnimation = Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.bounceInOut,
    ));
  }

  void _listener() {
    if (_controller.text.isNotEmpty) {
      if (_tweenAnimation.value == 0) _animationController.forward();
    } else {
      if (_tweenAnimation.value == 1) _animationController.reverse();
    }
  }

  @override
  void dispose() {
    _controller.removeListener(_listener);
    _controller.dispose();
    _animationController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            focusNode: _focusNode,
            controller: _controller,
            autofocus: true,
            onTap: widget.onTap,
            onSubmitted: widget.onSearch,
            maxLines: 1,
            cursorColor: Colors.white,
            textInputAction: TextInputAction.search,
            style: context.textTheme.titleLarge?.copyWith(
              color: Colors.white,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: S.current.search,
              isDense: true,
              contentPadding: EdgeInsets.zero,
              hintStyle: context.textTheme.titleLarge?.copyWith(
                color: Colors.white,
              ),
            ),
          ),
        ),
        ScaleTransition(
          scale: _animationController,
          child: IconButton(
              onPressed: () {
                _controller.clear();
                _focusNode.requestFocus();
              },
              icon: const Icon(Icons.close)),
        ),
        IconButton(
            onPressed: widget.onSpeech,
            icon: const Icon(
              Icons.mic,
              color: Colors.white,
            )),
      ],
    );
  }
}
