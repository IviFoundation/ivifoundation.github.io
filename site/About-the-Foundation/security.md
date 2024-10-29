# IVI Foundation Security

The IVI Foundation is committed to providing secure software to its users. We take security seriously and appreciate the efforts of users and security researchers to help us improve the security of our software. We encourage the community to participate in our responsible disclosure process.

## Responsible disclosure

If you believe you have found a security issue in our software, we encourage you to notify us immediately. We welcome working with you to resolve the issue promptly.

To report security issues, contact us at:

[security@ivifoundation.org](mailto:security@ivifoundation.org)

Please include the following information in your report:

1. A clear description of the issue and steps to reproduce it.
2. The version of the software in use.
3. Operating system and version details.
4. Any extra information that may help us understand the issue.
5. Your name and contact information.
6. Whether you want credit for the discovery.

## Our commitment

From the moment we receive a report, we will:

1. Confirm the receipt of the report; typically within a business day.
2. Assign a person to investigate the issue.
3. Provide an estimated time frame for the resolution of the issue; typically within 30 days.
4. Keep you informed with the progress of the investigation.
5. Work with you to coordinate public disclosure in a way that minimizes risk to our users.

We will credit you for the discovery if you desire, and we will not disclose your identity without consent.

## Security advisories

To the best of our knowledge, there are no known vulnerabilities with the installation of our software, nor does it open any ports on the system, except as noted below.

- *No known issues.*

## Security practices

The IVI Foundation builds software in a secure environment and uses code signing to prevent tampering and ensure software integrity.

To the best of our knowledge, there are no known vulnerabilities in our build process, except as noted below.

- **WiX 3:** The IVI Foundation currently uses the WiX Toolset version 3 for building some of our Windows installer packages. While WiX 3 has been a reliable tool, it does not support some of the latest security features and best practices available in newer versions. Specifically, WiX 3 lacks support for advanced code signing methods and modern encryption standards that enhance installer security. We are in the process of upgrading to WiX 5, which offers improved security features and better aligns with current industry standards. This upgrade will allow us to further strengthen the security and integrity of our software installations.
