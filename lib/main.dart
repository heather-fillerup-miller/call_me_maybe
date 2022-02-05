import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:call_me_maybe/models/prior_position.dart';
import 'my_app.dart';
import 'models/resume_details.dart';
import './models/contact_info.dart';
import './models/prior_position.dart';

void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);

  runApp(MyApp(
      resume: ResumeDetails(
          contact: ContactInfo(
              name: 'Heather Fillerup',
              email: 'Heather.Miller@ibm.com',
              phoneNo: '978.616.9837',
              shortUrl: 'in/heather-fillerup-miller',
              webUrl: 'https://www.linkedin.com/',
              imageFile: 'assets/images/heather.jpg',
              title: 'Software Developer'),
          positions: [
        PriorPosition(
            jobTitle: 'Software Developer',
            company: 'IBM',
            employmentDates: '2021 - Current',
            location: 'Dallas, TX',
            description:
                '• Work with team members and clients to create high quality proofs-of-concept SaaS and generate technical sales assets for the progression or close of solution sales opportunities.'
                '\n• Actualize complex systems of engagement with in-depth product, technology, or industry-related specialized skills. '
                '\n• Leverage IBM Cloud Platform as a Service developer platform services for composition and aggregation.'
                '\n• Leverage IBM'
                's extensive data analytics capabilities, including data science and data management aspects'),
        PriorPosition(
            jobTitle: 'IT Information Systems Specialist',
            company: 'Hawaii Pacific Health',
            employmentDates: '2018 - Current',
            location: 'Honolulu, HI',
            description:
                '• Act as a liaison between the leadership of the Clinical, Finance, IT and Research departments.'
                '\n• Lead the CTMS/Electronic Medical Record HL7 interface project management for the Epic Ambulatory and Bridges Interface Business Analysts to improve quality assurance for data shared between the CTMS and EMR.'
                '\n• Lead the Electronic research billing review project management for the Epic Revenue Cycle and Ambulatory Business Analysts to enhance billing compliance.'
                '\n• Lead the Epic Research project management for the Epic Ambulatory Business Analyst, Research Medical Director, Research Operations Director and Epic IT Medical Director to ensure that the hospital system establishes and maintains research functionality in Epic.'
                '\n• Coordinated data workflow process design and improvement.'
                '\n• Manage data reports, testing of new functionality/system changes and coordinate data quality assurance.'
                '\n• Design and implement CTMS user guides, training and re-education initiatives.'),
        PriorPosition(
            jobTitle: 'Clinical Trial Systems Coordinator',
            company: 'University of Hawaii',
            employmentDates: '2016 - 2018',
            location: 'Honolulu, HI',
            description:
                '•	Acted as a liaison between the consortium partners and Cancer Center leadership.'
                '\n• Managed new functionally testing/upgrades and coordinated data quality assurance and improvement.'
                '\n• Managed SQL reporting using JasperReports and Oracle updates, patches and backups.'
                '\n• Coordinated data workflow process design and improvement.'
                '\n• Designed and administered CTMS user training and education.'
                '\n• Lead the Electronic Protocol Review and Monitoring Committee project management for the Compliance and Clinical Trials Offices to improve the process for tracking and implementing new protocols.'),
        PriorPosition(
            jobTitle: 'Clinical Research Associate',
            company: 'University of Hawaii',
            employmentDates: '2015 - 2017',
            location: 'Honolulu, HI',
            description:
                '\n• Lead coordinator for the National Cancer Center Institute Gynecology Oncology Group trials.'
                '\n• Coordinated clinical trials data management.'
                '\n• Coordinated subject screening, consenting, study enrollment, serious adverse events, and clinical study procedures.'
                '\n• Coordinated protocol startup review.'
                '\n• Specimen collection, handling, and shipping.'),
        PriorPosition(
            jobTitle: 'Clinical Research Analyst',
            company: "University of Utah",
            employmentDates: '2007 - 2014',
            location: 'Salt Lake City, UT',
            description:
                '\n• Managed Institutional Review Board submissions and reporting.'
                '\n• Coordinated research billing and data management.'
                '\n• Coordinated protocol design, data collection and analysis.'
                '\n• Coordinated manuscript writing and editing.'
                '\n• Coordinated subject screening, consenting, study enrollment, Serious Adverse Events, and clinical study procedures.'
                '\n• Performed lab techniques including genotyping, western blots, cell line maintenance, enzyme-linked immunosorbent assay (ELISA) and optical coherence tomography angiography.'
                '\n• Managed the genetically engineered mouse husbandry.'
                '\n• Awarded an NIH/NIDDK 2010 summer internship grant.'),
      ])));
}
