package dto;

public class DepartmentDTO {
	
	private String department;
	private String studentId;
	private String studentName;
	private int mark;
	
	public DepartmentDTO(String department, String studentId, String studentName, int mark) {
		super();
		this.department = department;
		this.studentId = studentId;
		this.studentName = studentName;
		this.mark = mark;
	}
	
	public DepartmentDTO() {
		
	}

	public String getDepartment() {
		return department;
	}

	public String getStudentId() {
		return studentId;
	}

	public String getStudentName() {
		return studentName;
	}

	public int getMark() {
		return mark;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}

	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}

	public void setMark(int mark) {
		this.mark = mark;
	}

	@Override
	public String toString() {
		return "DepartmentDTO [department=" + department + ", studentId=" + studentId + ", studentName=" + studentName
				+ ", mark=" + mark + "]";
	}
	
	
	
	
}
