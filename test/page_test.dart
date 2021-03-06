import 'package:test/test.dart';
import 'package:dartpedia/dartpedia.dart' as wiki;

void page_test() {
  test(
      "Testing MissingTitleException",
      () => {
            expect(
                wiki.PageResponse().parse('zzzzz',
                    {'action': 'parse', 'page': 'zzzzz', 'format': 'json'}),
                throwsException)
          });

  test(
      "Testing summarizeContentUpTo",
      () => {
            expect(
                wiki.WikipediaPage(content: 'Hello World')
                    .summarizeContentUpTo(5),
                equals("Hello"))
          });

  test(
      "Testing summarizeContentFromTo",
      () => {
            expect(
                wiki.WikipediaPage(content: 'Hello World')
                    .summarizeContentFromTo(6, 11),
                equals("World"))
          });
}

main() {
  page_test();
}
