package com.example.attendancemanagementsystem.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AttendanceService {
    @Autowired
    private AttendanceRepository attendanceRepository;

    public Iterable<Attendance> getAllAttendances() {
        return attendanceRepository.findAll();
    }

    public void saveAttendance(Attendance attendance) {
        attendanceRepository.save(attendance);
    }

    // Additional methods for business logic
}
