/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package twitternt.dao;

import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import twitternt.entity.Usuario;

/**
 *
 * @author Jesús Muley
 */
@Stateless
public class UsuarioFacade extends AbstractFacade<Usuario> {

    @PersistenceContext(unitName = "Twitternt-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public UsuarioFacade() {
        super(Usuario.class);
    }
    
    
    public Usuario findByUserName(String name){
        Usuario res;
        try{
          res = (Usuario)em.createNamedQuery("Usuario.findByNombreUsuario").setParameter("nombreUsuario", name).getSingleResult();
        }catch(Exception e){
            res = null;
            return res;
        }
        return res;
    }
    
    
}
