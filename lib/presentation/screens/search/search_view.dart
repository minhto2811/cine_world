import 'package:cine_world/core/extensions/context.dart';
import 'package:cine_world/generated/l10n.dart';
import 'package:cine_world/presentation/route.dart';
import 'package:flutter/material.dart';

class SearchView extends StatefulWidget {
  const SearchView(
      {super.key, this.onSearch, this.onTap, required this.controller});

  final void Function(String)? onSearch;
  final void Function()? onTap;
  final TextEditingController controller;

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: widget.controller,
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
        IconButton(
            onPressed: () => MyRoute.pop(), icon: const Icon(Icons.close)),
      ],
    );
  }
}
