package service;

import java.util.*;

import dto.DepartmentDTO;

public class DepartmentService {

public List<DepartmentDTO> getAllStudent(){
		
		ArrayList<DepartmentDTO> list = new ArrayList<DepartmentDTO>();
		
		list.add(new DepartmentDTO("Dep 1", "S1", "AGUS", 35));
		list.add(new DepartmentDTO("Dep 1", "S2", "BAGUS", 70));
		list.add(new DepartmentDTO("Dep 1", "S3", "CECIL", 60));
		list.add(new DepartmentDTO("Dep 1", "S4", "DEDI", 90));
		list.add(new DepartmentDTO("Dep 2", "S5", "ERI", 30));
		list.add(new DepartmentDTO("Dep 3", "S6", "FAHRI", 32));
		list.add(new DepartmentDTO("Dep 3", "S7", "GANDI", 70));
		list.add(new DepartmentDTO("Dep 3", "S8", "HANA", 20));
		
		return list;
	}
}
