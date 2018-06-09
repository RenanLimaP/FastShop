package br.com.fastshop.loja.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Repository;

import br.com.fastshop.loja.models.Produto;
import br.com.fastshop.loja.models.Usuario;

@Repository
public class UsuarioDAO implements UserDetailsService  {

    @PersistenceContext
    private EntityManager manager;

    @Override
    public UserDetails loadUserByUsername(String email){
        List<Usuario> usuarios = manager.createQuery("select u from Usuario u join fetch u.roles where u.email = :email", Usuario.class)
                .setParameter("email", email)
                .getResultList();

        if (usuarios.isEmpty()) {
            throw new UsernameNotFoundException("O usuário " + email + " não foi encontrado");
        }
        return usuarios.get(0);
    }
    
    
    
    public void cadastrar(Usuario usuario) {
//    	Role role = new Role("USER_ROLE");
//    	List<Role> roles = new ArrayList<Role>();
//    	roles.add(role);
//    	usuario.setRoles(roles);
    	BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
        String hasSenha = passwordEncoder.encode(usuario.getSenha());
        usuario.setSenha(hasSenha);
		manager.persist(usuario);
	}
        
}