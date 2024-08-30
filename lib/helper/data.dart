import 'package:flutter_news_app_with_api/models/category_model.dart';
  
List<CategoryModel> getCategories(){

  List<CategoryModel> category = [];
  CategoryModel categoryModel = new CategoryModel();

  //1
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "BBC News";
  categoryModel.imageUrl = "https://imgs.search.brave.com/KGvAmoxDivsujtoeIlYRZIEzfwev6A0XpCIG0OOLo3M/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvNjM2/ODAzMDIyL3Bob3Rv/L25ld3Mtb24tbGFw/dG9wLXNjcmVlbi5q/cGc_cz02MTJ4NjEy/Jnc9MCZrPTIwJmM9/R2QwZWtuZVZuMS1O/Umdtay1nU0hvaExY/VWNsTUlmTzRvMi1s/d3hqZzBxQT0";
  category.add(categoryModel);

  //2
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Entertainment";
  categoryModel.imageUrl = "https://images.unsplash.com/photo-1522869635100-9f4c5e86aa37?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80";
  category.add(categoryModel);

  //3
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "General";
  categoryModel.imageUrl = "https://images.unsplash.com/photo-1495020689067-958852a7765e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60";
  category.add(categoryModel);

  //4
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Health";
  categoryModel.imageUrl = "https://images.unsplash.com/photo-1494390248081-4e521a5940db?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1595&q=80";
  category.add(categoryModel);

  //5
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Science";
  categoryModel.imageUrl = "https://images.unsplash.com/photo-1554475901-4538ddfbccc2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1504&q=80";
  category.add(categoryModel);

  //5
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Sports";
  categoryModel.imageUrl = "https://images.unsplash.com/photo-1495563923587-bdc4282494d0?ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80";
  category.add(categoryModel);

  //5
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Technology";
  categoryModel.imageUrl = "https://images.unsplash.com/photo-1519389950473-47ba0277781c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80";
  category.add(categoryModel);

  return category;
}
