class question {
  const question(this.text, this.ans);
  final String text;
  final List<String> ans;
  List<String> shufflelist() {
    final shflist = List.of(ans);
    shflist.shuffle();
    return shflist;
  }
}
