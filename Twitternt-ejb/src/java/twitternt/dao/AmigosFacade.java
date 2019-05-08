/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package twitternt.dao;

import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import twitternt.entity.Amigos;
import twitternt.entity.Usuario;

/**
 *
 * @author adry1
 */
@Stateless
public class AmigosFacade extends AbstractFacade<Amigos> {
    @PersistenceContext(unitName = "Twitternt-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public AmigosFacade() {
        super(Amigos.class);
    }
    
    private List<Usuario> findByUser1(Integer userId){
        return em.createQuery("SELECT a.usuario FROM Amigos a WHERE a.usuario1 = :userId AND a.solicitudAceptada = true")
                .setParameter("userId", userId)
                .getResultList();
    }
    
    private List<Usuario> findByUser2(Integer userId){
        return em.createQuery("SELECT a.usuario1 FROM Amigos a WHERE a.usuario = :userId AND a.solicitudAceptada = true")
                .setParameter("userId", userId)
                .getResultList();
    }
    
    public List<Usuario> findByUser(Integer userId){
        List<Usuario> lista = findByUser1(userId);
        lista.addAll(findByUser2(userId));
        return lista;
    }
}
