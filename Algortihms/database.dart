class category{
  late int categoryId;
  late String categoryName;
  
  category(this.categoryId,this.categoryName);
}

class director{
  late int directorId;
  late String directorName;

  director(this.directorId,this.directorName);
}

class movies{
  late int movieId;
  late String movieName;
  late int movieYear;
  category categories;
  director movieDirector;
  movies(this.movieId,this.movieName,this.movieYear,this.categories,this.movieDirector);
}

void main(){
  var categoryOne= category(1,"Drama");
  var categoryTwo = category(2,"Comedy");
  var categoryWhich = category(3, "Science Fiction");

  var directorOne = director(1,"Nuri");
  var directorTwo = director(2,"Quentin");
  var directorThree = director(3,"Try");

  var movieOne = movies(1,"Django",2013,categoryOne, directorTwo );
  var movieTwo = movies(2,"Inception",2006,categoryWhich, directorThree);

  print(movieOne.movieName);
  print(movieTwo.categories.categoryId);
}