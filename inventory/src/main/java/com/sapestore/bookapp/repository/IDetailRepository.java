package com.sapestore.bookapp.repository;





import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.sapestore.bookapp.model.AdminContent;

@Repository
public interface IDetailRepository extends JpaRepository<AdminContent, Integer>{
	
	

}
