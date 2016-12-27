/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.koperasi.service;

import com.koperasi.bean.Barang;
import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author juned
 */
@Service
@Transactional
public class BarangService {
    
    @Autowired
    private SessionFactory sessionFactory;
    /**
     * Query ambbil semua barang
     * @return 
     */
    public List<Barang> getListBarang (){
        return sessionFactory.getCurrentSession().createCriteria(Barang.class).list();
    }
    public void saveBarang (Barang barang) throws Exception{
        sessionFactory.getCurrentSession().save(barang);
    }
}
