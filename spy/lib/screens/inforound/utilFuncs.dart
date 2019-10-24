import 'dart:math';

List<String> locationList = 
[
  'Spa', 'Mansion', 'Garden',
  'Palace', 'Church', 'Restaurant',
  'Pool', 'Beach', 'Eifel Tower',
  'White House', 'Spain', 'Big Ben',
  'Mount Fuji'
];

class Info
{
  String location;
  bool spy;
}

List<Info> getInfo(int maxP, int maxS)
{
  var out = List<Info>();
  var spies = getSpy(maxS, maxP);
  var loc = generateLocation();
  for (var i = 0; i < maxP; i++)
  {
    var item = Info();
    item.spy = spies[i];
    item.location = (item.spy) ? 'Unknown' : loc;
    out.add(item);
  }
  return out;
}

List<bool> getSpy(int spycount, int maxP)
{
  var out = List<bool>();
  List<int> c = List<int>();

  for (var i = 0; i < spycount; i++)
  {
    int j = Random.secure().nextInt(maxP);
    if (c.contains(j))
    {
      i--;
      continue;
    }

    c.add(j);
  }

  c.sort();
  
  int j = 0;
  for (var i = 0; i < maxP; i++)
  {
    if (c.length != j && c[j] == i)
    {
      out.add(true);
      j++;
    }
    else
      out.add(false);
  }

  return out;
}

String generateLocation()
{
  int chosen = Random.secure().nextInt(locationList.length);
  locationList.shuffle();
  return locationList[chosen];
}