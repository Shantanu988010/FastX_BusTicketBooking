package com.example.Fast_BusBooking;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;
import static org.mockito.Mockito.*;


import com.example.Fast_BusBooking.entity.User;
import com.example.Fast_BusBooking.repo.UserRepository;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.test.web.servlet.MockMvc;

@SuppressWarnings("removal")
@WebMvcTest(UserController.class)
public class FastBusBookingApplicationTests {

    @Autowired
    private MockMvc mockMvc;

    @MockBean
    private UserRepository repo;

    @Test
    public void testSaveUserSuccess() throws Exception {
        User user = new User(null, "Shantanu", "shantanu@example.com", "password123", "USER");

        mockMvc.perform(post("/saveuser")
                .param("name", user.getName())
                .param("email", user.getEmail())
                .param("password", user.getPassword())
                .param("role", user.getRole()))
            .andExpect(status().is3xxRedirection())
            .andExpect(redirectedUrl("loginpage"));

        verify(repo, times(1)).save(any(User.class));
    }

    @Test
    public void testLoginSuccess() throws Exception {
        User user = new User(1, "Admin", "admin@example.com", "admin123", "ADMIN");
        when(repo.findByEmail("admin@example.com")).thenReturn(user);

        mockMvc.perform(post("/logincheck")
                .param("email", "admin@example.com")
                .param("password", "admin123"))
            .andExpect(status().isOk())
            .andExpect(view().name("home.jsp"));
    }

    @Test
    public void testLoginFailure() throws Exception {
        when(repo.findByEmail("user@example.com")).thenReturn(null);

        mockMvc.perform(post("/logincheck")
                .param("email", "user@example.com")
                .param("password", "wrongpass"))
            .andExpect(status().is3xxRedirection())
            .andExpect(redirectedUrl("loginpage"));
    }
} 
