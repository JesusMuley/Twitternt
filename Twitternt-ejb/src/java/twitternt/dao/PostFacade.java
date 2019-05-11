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
import twitternt.entity.Post;

/**
 *
 * @author Jesús Muley
 */
@Stateless
public class PostFacade extends AbstractFacade<Post> {

    @PersistenceContext(unitName = "Twitternt-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public PostFacade() {
        super(Post.class);
    }
    
        public List<Post> findByVisibilidad(Integer visibilidad){
        return em.createQuery("SELECT p FROM Post p WHERE p.visibilidad = :visibilidad ORDER BY p.fechaPublicacion DESC")
                .setParameter("visibilidad", visibilidad)
                .getResultList();
}
       // Convenio Visibilidad: 0 Publico 1 Amigos 2 Privado
}
