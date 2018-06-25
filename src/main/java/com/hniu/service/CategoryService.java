
package com.hniu.service;

import com.hniu.pojo.Category;
import java.util.List;

public interface CategoryService{
    List<Category> list();

    void add(Category category);

    void delete(int id);

    Category get(int id);

    void update(Category category);
}