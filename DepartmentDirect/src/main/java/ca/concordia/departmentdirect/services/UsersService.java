package ca.concordia.departmentdirect.services;

import ca.concordia.departmentdirect.entities.Users;

public interface UsersService {
    Users findByEmail(String email);
}
