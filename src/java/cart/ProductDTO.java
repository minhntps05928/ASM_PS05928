/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cart;

import Model.Product;

/**
 *
 * @author thaim
 */
public class ProductDTO {
    private Product sanpham;
    private int quantity;
    private ProductDTO() {
        
    }

    public ProductDTO(Product sp) {
        this.sanpham = sp;
        this.quantity = 1;
    }

    public Product getSanpham() {
        return sanpham;
    }

    public void setSanpham(Product sanpham) {
        this.sanpham = sanpham;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
    
}
