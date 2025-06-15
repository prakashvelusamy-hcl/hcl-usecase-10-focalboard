Feature: Deny SSH open to the world

  Scenario: Security group ingress rule should not allow 0.0.0.0/0 on port 22
    Given I have aws_security_group defined
    When it contains ingress with from_port equals 22 and to_port equals 22
    Then it must not contain cidr_blocks with 0.0.0.0/0