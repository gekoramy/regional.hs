package dunder.mifflin.utils;

import dunder.mifflin.persistence.daos.*;
import dunder.mifflin.persistence.pojos.City;
import dunder.mifflin.persistence.pojos.Person;
import dunder.mifflin.persistence.pojos.Province;
import dunder.mifflin.persistence.pojos.Region;

import javax.servlet.http.HttpServletRequest;

public class Patients {

    public static void patient(HttpServletRequest req, long who, PersonDAO personDAO, AvatarDAO avatarDAO, CityDAO cityDAO, ProvinceDAO provinceDAO, RegionDAO regionDAO) {

        final Person patient = personDAO.byKey(who).orElseThrow();
        final String avatar = Avatars.avatar200(avatarDAO, req.getContextPath(), patient);

        {
            final City city = cityDAO.byKey(patient.birthplace()).orElseThrow();
            final Province province = provinceDAO.byKey(city.province()).orElseThrow();
            final Region region = regionDAO.byKey(province.region()).orElseThrow();

            req.setAttribute("birthplace_city", city);
            req.setAttribute("birthplace_province", province);
            req.setAttribute("birthplace_region", region);
        }

        {
            final City city = cityDAO.byKey(patient.residence()).orElseThrow();
            final Province province = provinceDAO.byKey(city.province()).orElseThrow();
            final Region region = regionDAO.byKey(province.region()).orElseThrow();

            req.setAttribute("residence_city", city);
            req.setAttribute("residence_province", province);
            req.setAttribute("residence_region", region);
        }

        req.setAttribute("patient", patient);
        req.setAttribute("patient_avatar", avatar);
    }
}
