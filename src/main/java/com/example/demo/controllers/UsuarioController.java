package com.example.demo.controllers;

import com.example.demo.models.Usuario;
import com.example.demo.services.UsuarioService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class UsuarioController {

    private final UsuarioService usuarioService;

    public UsuarioController(UsuarioService usuarioService) {
        this.usuarioService = usuarioService;
    }

    @GetMapping("/registro")
    public String mostrarPaginaRegistro() {
        return "registroView";
    }

    @GetMapping("/listaUsuarios")
    public String mostrarPaginaListaUsuarios(Model model) {

        List<Usuario> usuarios = usuarioService.obtenerUsuarios();
        model.addAttribute("usuarios", usuarios);

        return "listaUsuariosView";
    }

    @PostMapping("/formularioRegistro")
    public String crearUsuario(@RequestParam("nombreUsuario") String nombreUsuario,
                               @RequestParam("contrasena") String contrasena,
                               Model model) {

        model.addAttribute("nombreUsuario", nombreUsuario);
        model.addAttribute("contrasena", contrasena);

        Usuario usuario = new Usuario(nombreUsuario, contrasena);
        usuarioService.crearUsuario(usuario);

        return "registroView";
    }

}
