import 'package:tsvit_paporoti/models/product.dart';
import 'package:tsvit_paporoti/models/response.dart';

abstract class Products {
  static final List<Product> items = [
    Product(
      name: 'Мило Дамаська троянда',
      term: 'damaska_troyanda_mylo',
      price: 55.0,
      availability: true,
      images: [
        'assets/images/damaska_troyanda_mylo_1.jpg',
        'assets/images/damaska_troyanda_mylo_2.jpg',
        'assets/images/damaska_troyanda_mylo_3.jpg',
      ],
      description:
          '''Ніжне оксамитове мило з натуральною олією дамаської троянди. '''
          '''Для жирної та нормально шкіри. '''
          '''Склад: Олії кукурудзяна, кокосова, оливкова, пальмова, вода, NaOH, червона глина, ефірна олія дамаської троянди. '''
          '''Зберігати при температурі -5-+22 °С і вологості повітря 75%. Термін придатності – 9 місяців. '''
          '''Протипоказання: алергія на ефірні олії. Купити натуральне мило на сайті з доставкою'''
          ''' натуральне мило купити Львів пр. Шевченка, 14 купити оптом натуральне мило - залишайте '''
          '''заявку https://ecosoap.in.ua/contact_us/ і ми надішлемо гуртові прайси і умови''',
      responses: [],
    ),
    Product(
      name: 'Мило Дитяче',
      term: 'dytyache_mylo',
      price: 45.0,
      availability: true,
      images: [
        'assets/images/dytyache_mylo_1.jpg',
        'assets/images/dytyache_mylo_2.jpg',
        'assets/images/dytyache_mylo_3.jpg',
      ],
      description:
          '''Завдяки відвару ромашки та календули має кращі антисептичні '''
          '''та очисні властивості, ніж кукурудзяне та гіпоалергенне. Попри те, '''
          '''що результати досліджень не виявили алергенів, для дітей, схильних '''
          '''до алергії радимо використовувати «Гіпоалергенне» мило. Для всіх '''
          '''типів шкіри. Склад: Омилені олії оливкова, кокосова, пальмова, '''
          '''кукурудзяна, соняшникова, касторова; вода; NaOH, відвар ромашки та '''
          '''календули. Купити натуральне мило на сайті з доставкою Натуральне '''
          '''мило купити у Львові, пр. Шевченка, 14 Купити натуральне мило гуртом '''
          '''- залишайте заявку https://ecosoap.in.ua/contact_us/ і ми надішлемо гуртові '''
          '''прайси та умови Зберігати при температурі -5-+22 °С і вологості повітря 75%.'''
          ''' Термін придатності – 12 місяців.''',
      responses: [],
    ),
    Product(
      name: 'Мило Грація',
      term: 'graciya_mylo',
      price: 55.0,
      availability: true,
      images: [
        'assets/images/graciya_mylo_1.jpg',
        'assets/images/graciya_mylo_2.jpg',
        'assets/images/graciya_mylo_3.jpg',
      ],
      description:
          '''Зварене за рецептом Дитячого мила з додавання подрібнених '''
          '''квітів календули та ромашки. Ароматна композиція має заспокійливий, '''
          '''гармонізуючий ефект. Для всіх типів шкіри. Склад: Омилені олії '''
          '''оливкова, кокосова, касторова, соняшникова; відвар ромашки та календули;'''
          ''' NaOH; ефірні олії герані, меліси, кипариса. Зберігати при температурі '''
          '''-5-+22 °С і вологості повітря 75%. Термін придатності – 9 місяців. '''
          '''Протипоказання: індивідуальна чутливість до ефірних олій, алергія '''
          '''на ефірні масла. Натуральне мило купити з доставкою по Україні  '''
          '''купити натуральне мило гурт - залишайте заявку за посиланням '''
          '''https://ecosoap.in.ua/contact_us/ і ми надішлемо вам гуртові прайси і умови ''',
      responses: [
        Response(
          name: 'Діна',
          date: DateTime(2019, 4, 10),
          stars: 2,
          text:
              '''Чудове ароматне мило, приємне у використанні. Може бути як '''
              '''бадьорящим так і заспокійливим завдяки такому підбору трав! '''
              '''Дуже подобається така композиція, Користуємося вашим милом, пробували різні, хороша якість!''',
        ),
        Response(
          name: 'Messi',
          date: DateTime(2021, 3, 10),
          stars: 4,
          text:
              '''Чудове ароматне мило, приємне у використанні. Може бути як '''
              '''бадьорящим так і заспокійливим завдяки такому підбору трав! '''
              '''Дуже подобається така композиція, Користуємося вашим милом, пробували різні, хороша якість!''',
        )
      ],
    ),
    Product(
      name: 'Мило Вівсяне',
      term: 'vivsyane_mylo',
      price: 55.0,
      availability: true,
      images: [
        'assets/images/vivsyane_mylo_1.jpg',
        'assets/images/vivsyane_mylo_2.jpg',
        'assets/images/vivsyane_mylo_3.jpg',
      ],
      description: '''Ніжне натуральне мило з відваром вівсяних пластівців. '''
          '''Підходить для всіх типів шкіри, втім числі – сухої. Завдяки ефірним '''
          '''оліям лемонграсу та чайного дерева має виражені антисептичні '''
          '''властивості. Унікальність цього мила в тому, що воно має хороші '''
          '''мийні та антисептичні властивості і разом з тим не сушить шкіру.''',
      responses: [],
    ),
    Product(
      name: 'Мило Кава з корицею',
      term: 'kava_korucya_mylo',
      price: 55.0,
      availability: true,
      images: [
        'assets/images/kava_korucya_mylo_1.jpg',
        'assets/images/kava_korucya_mylo_2.jpg',
        'assets/images/kava_korucya_mylo_3.jpg',
      ],
      description: '''Мило-скраб. Часточки меленої кави ніжно скрабують, '''
          '''очищаючи шкіру від зроговілих часточок, роблячи її гладенькою, ніжною. '''
          '''Для скрабування обличчя – намилити руки і піну нанести на вологу шкіру '''
          '''обличчя. Скрабувати масажними рухами, не розтягуючи шкіру. Для всіх типів '''
          '''шкіри. Склад: Омилені олії кукурудзяна, кокосова, пальмова, оливкова, '''
          '''соняшникова, вода, NaOH, кава мелена, ефірна олія кориці. Зберігати '''
          '''при температурі -5-+22 °С і вологості повітря 75%. Термін придатності – 9 місяців.''',
      responses: [],
    ),
    Product(
      name: 'Мило Гіпоалергенне',
      term: 'gipoalergenne_mylo',
      price: 45.0,
      availability: true,
      images: [
        'assets/images/gipoalergenne_mylo_1.jpg',
        'assets/images/gipoalergenne_mylo_2.jpg',
        'assets/images/gipoalergenne_mylo_3.jpg',
      ],
      description:
          '''Розроблене для безпечної гігієни хворим на алергію та астму. '''
          '''Відповідає вимогам до дитячого мила. Не містить ефірних олій, тому '''
          '''не має вираженого запаху. Для всіх типів шкіри. Купити натуральне мило '''
          '''Гіпоалергенне ви можете з доставкою по Україні службами Нова пошта, '''
          '''Укрпошта. При замовленні на суму понад 300 грн. доставка безкоштовна. '''
          '''Натуральне мило купити  Львів, проспект Шевченка, 14 за цінами виробника '''
          ''''Купити натуральне мило гуртом https://ecosoap.in.ua/contact_us/ ''',
      responses: [],
    ),
    Product(
      name: 'Мило Хвойне',
      term: 'hvoine_mylo',
      price: 55.0,
      availability: true,
      images: [
        'assets/images/hvoine_mylo_1.jpg',
        'assets/images/hvoine_mylo_2.jpg',
      ],
      description:
          '''Зварене на відварі ялинової хвої. Мелені  соснові бруньки '''
          '''скрабують шкіру, очищають пори. Особливо відчутний ефект у бані та сауні. '''
          '''Для всіх типів шкіри. Склад: Омилені олії кукурудзяна, кокосова, пальмова, '''
          '''соняшникова; відвар хвої ялиці, NaOH, брунька соснова мелена, , ефірна олія ялиці. '''
          ''''Зберігати при температурі -5-+22 °С і вологості повітря 75%. Термін придатності – 9 місяців.''',
      responses: [],
    ),
    Product(
      name: 'Мило Медове з воском і цитрусом',
      term: 'vosk_med_mylo',
      price: 55.0,
      availability: true,
      images: [
        'assets/images/vosk_med_mylo_1.jpg',
        'assets/images/vosk_med_mylo_2.jpg',
        'assets/images/vosk_med_mylo_3.jpg',
      ],
      description:
          '''Мед і віск  запобігають  пересушуванню шкіри лужним РН мила. '''
          '''Ефірні олії цитрусових покращують настрій, очищають та дезінфікують. '''
          '''У зв’язку з тим, що ми використовуємо натуральний мед, відтінок аромату, '''
          '''колір та структура мила можуть дещо відрізнятися в різних серіях, '''
          '''особливо навесні. Для всіх типів шкіри. Склад: Омилені олії кукурудзяна, '''
          '''кокосова, пальмова, соняшникова; вода; NaOH; мед; забрус, віск бджолиний; '''
          '''ефірні олії лимона, апельсина.. Зберігати при температурі -5-+22 °С і вологості '''
          ''''повітря 75%. Термін придатності – 9 місяців.''',
      responses: [],
    )
  ];
}