package org.fullstack4.springmvc.dto;

import lombok.*;
import lombok.extern.log4j.Log4j2;
import org.checkerframework.checker.units.qual.N;

import javax.validation.constraints.Email;
import javax.validation.constraints.Future;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Past;
import java.time.LocalDate;

@Log4j2
@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class MemberDTO {
    @NotBlank
    private String user_id;
    @NotBlank
    private String name;
    @NotBlank
    private String pwd;
    private String jumin;
    @NotBlank
    private String addr1;
    @NotBlank
    private String addr2;
    @NotBlank
    private String birthday;
    @NotBlank
    @Email
    private String email;
    private String job_code;
    private int mileage;
    private String user_state;
    private LocalDate reg_date;
    private LocalDate modify_date;
    private LocalDate pwd_change_date;
    private LocalDate leave_date;
    private String interest;

}