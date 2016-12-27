/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.koperasi.controller;

import com.koperasi.bean.Supplier;
import com.koperasi.bean.Barang;
import com.koperasi.service.BarangService;
import com.koperasi.service.SupplierService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



/**
 *
 * @author juned
 */
@Controller
public class IndexController {
    @Autowired
    private BarangService barangService;
    @Autowired
    private SupplierService supplierService;
    
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index(ModelMap modelMap){
        return "index";
    }
    @RequestMapping(value = "/barang", method = RequestMethod.GET)
    public String barang(ModelMap modelMap) {
        modelMap.put("ListBarang", barangService.getListBarang());
        return "barang";
    }
    @RequestMapping(value = "/simpan-barang", method = RequestMethod.POST)
    public String simpanBarang(Barang barang) throws Exception{
        barangService.saveBarang(barang);
        return "redirect:/";
    }
    @RequestMapping(value = "/supplier", method = RequestMethod.GET)
    public String supplier(ModelMap modelMap){
        modelMap.put("ListSupplier", supplierService.getListSupplier());
        return "supplier";
    }
    @RequestMapping(value = "/simpan-supplier", method = RequestMethod.POST)
    public String simpanSupplier(Supplier supplier) throws Exception{
        supplierService.saveSupplier(supplier);
        return "redirect:/supplier";
    }
    @RequestMapping(value = "/delete-supplier", method = RequestMethod.GET)
    public String hapusSupplier(String nips) throws Exception{
        supplierService.deleteSupplier(nips);
        return "redirect:/supplier";
    }
    
}
