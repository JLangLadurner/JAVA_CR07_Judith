package com.CR07.login.repository;

import com.CR07.login.model.Role;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository("roleRepository")

public interface RoleRepository extends JpaRepository<Role,Integer> {
    Role findByRole(String role);

}
