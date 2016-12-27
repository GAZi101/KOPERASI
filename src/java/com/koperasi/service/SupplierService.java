/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.koperasi.service;

import com.koperasi.bean.Supplier;
import java.util.List;
import net.sf.ehcache.hibernate.HibernateUtil;
import org.hibernate.Hibernate;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author juned
 */
@Service
@Transactional
public class SupplierService {
    @Autowired
    private SessionFactory sessionFactory;
     /**
     * Query ambbil semua pelanggan
     * @return 
     */
    public List<Supplier> getListSupplier (){
        return sessionFactory.getCurrentSession().createCriteria(Supplier.class).list();
    }
    public void saveSupplier (Supplier supplier) throws Exception{
        sessionFactory.getCurrentSession().save(supplier);
    }
    
    public int deleteSupplier (String nips){
        Session sesi = sessionFactory.openSession();
        Transaction transaction = sesi.beginTransaction();
        
        Query q = sesi.createQuery("delete from Supplier where nips='"+nips+"'");
        int result = q.executeUpdate();
        transaction.commit();
        sesi.close();
        
        return result;
                
    }
   
}
