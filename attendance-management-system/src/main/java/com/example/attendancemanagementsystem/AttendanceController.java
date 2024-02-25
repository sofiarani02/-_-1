package com.example.attendancemanagementsystem.controller;

import com.example.attendancemanagementsystem.model.Attendance;
import com.example.attendancemanagementsystem.model.AttendanceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class AttendanceController {
    @Autowired
    private AttendanceService attendanceService;

    @GetMapping("/")
    public String index(Model model) {
        Iterable<Attendance> attendances = attendanceService.getAllAttendances();
        model.addAttribute("attendances", attendances);
        return "index";
    }

    @GetMapping("/attendance")
    public String showAttendanceForm(Model model) {
        model.addAttribute("attendance", new Attendance());
        return "attendance";
    }

    @PostMapping("/attendance")
    public String submitAttendanceForm(Attendance attendance) {
        attendanceService.saveAttendance(attendance);
        return "redirect:/";
    }
}
