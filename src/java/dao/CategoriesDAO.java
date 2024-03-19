package dao;

import java.util.*;
import model.*;


public class CategoriesDAO extends MyDAO {

    // lay ra tat ca category
    public List<Categories> getCategories() {
        List<Categories> categoriesList = new ArrayList<>();
        xSql = "SELECT * FROM Categories";
        try {
            String xName;
            int xId;
            Categories x;
            ps = con.prepareStatement(xSql);
            rs = ps.executeQuery();
            while (rs.next()) {
                xId = rs.getInt("ID");
                xName = rs.getString("Name");
                x = new Categories(xId, xName);
                categoriesList.add(x);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return categoriesList;
    }

    // thêm moi 1 category
    public void addCategory(String categoryName) {
        xSql = "INSERT INTO Categories (Name) VALUES (?)";
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, categoryName);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // cap nhat category
    public void updateCategory(int cateID, String newName) {
        xSql = "UPDATE Categories SET Name = ? WHERE ID = ?";
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, newName);
            ps.setInt(2, cateID);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // xóa category
    public void deleteCategory(int cateID) {
        try {
            // Set foreign key references to null in other tables
            xSql = "UPDATE Products SET CategoryID = NULL WHERE CategoryID = ?";
            ps = con.prepareStatement(xSql);
            ps.setInt(1, cateID);
            ps.executeUpdate();

            // Delete the category from Categories table
            xSql = "DELETE FROM Categories WHERE ID = ?";
            ps = con.prepareStatement(xSql);
            ps.setInt(1, cateID);
            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        CategoriesDAO cd = new CategoriesDAO();
        System.out.println(cd.getCategories());
    }
}
