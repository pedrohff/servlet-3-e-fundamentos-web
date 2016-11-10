package br.com.alura.gerenciador.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.alura.gerenciador.Usuario;
import br.com.alura.gerenciador.dao.UsuarioDAO;

@WebServlet(urlPatterns="/login")
public class Login extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("email");
		String senha = req.getParameter("senha");
		Usuario user = new UsuarioDAO().buscaPorEmailESenha(email, senha);
		PrintWriter writer = resp.getWriter();
		if(user == null){
			writer.println("<html><body>Usuário Inválido</body></html>");
		}else{
			HttpSession session = req.getSession();
			session.setAttribute("usuario.logado", user);
			Cookie cookie = new Cookie("usuario.logado", email);
			cookie.setMaxAge(600);
			resp.addCookie(cookie);
			writer.println("<html><body>Usuário logado: " + email + " </body></html");
			session.setAttribute("usuarioLogado", user);
		}
	}
}
