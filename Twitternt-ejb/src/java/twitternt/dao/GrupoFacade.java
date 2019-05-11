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
import twitternt.entity.Grupo;
import twitternt.entity.Usuario;

/**
 *
 * @author Jesús Muley
 */
@Stateless
public class GrupoFacade extends AbstractFacade<Grupo> {

    @PersistenceContext(unitName = "Twitternt-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public GrupoFacade() {
        super(Grupo.class);
    }

    //public List<Grupo> findGroupsWithUser(Integer user) {
    //  return em.createQuery("SELECT DISTINCT g FROM Grupo g WHERE g.usuarioList.contains(:user)")
    //           .setParameter("user", user).getResultList();
    //}

    public List<Grupo> findGroupsWithAdmin(Integer user) {
        return em.createQuery("SELECT g FROM Grupo g WHERE g.admin.id = :user")
                .setParameter("user", user).getResultList(); 
    }

 
    
}
