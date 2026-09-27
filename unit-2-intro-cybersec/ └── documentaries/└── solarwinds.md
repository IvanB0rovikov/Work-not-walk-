# The SolarWinds Hack

**Date:** 27.09.2026

## Goal
In this assignment, I will investigate an incident involving a cyberattack on the supply chain that affected nearly all U.S.A domestic infrastructure. 

## Steps
First, I watched the video, and then I started answering the questions.

## Findings

1. The incident in your own words
   Between 2019 and 2020, an attack on SolarWinds was planned and carried out. The hackers launched a supply chain attack, which means they injected malicious code not into the ultimate target of the attack, but into one of the supply chains through which traffic flows to numerous companies in the U.S.A and around the world.

2. Who was affected, and how?
   All SolarWinds users who used the Orion system were affected. Hackers embedded stealthy malware in a new Orion update; the developers failed to notice it and released the update containing the virus, resulting in thousands of people being affected. Nearly all major U.S.A government agencies were impacted, as were many companies in Europe and Asia.

3. The CIA principle
   The principle of integrity was most severely compromised, because hackers embedded stealth software into the Orion system update, which subsequently compromised the integrity of data transmission. The principle of confidentiality was also compromised, because a massive amount of confidential data and information was stolen.
   
4. The attack technique - what made this one different?
   A group of hackers spent a year carrying out their attack; they searched for a vulnerability in the chain and initially injected ordinary stealth code there to verify that the security system would let it through. They then injected fully functional code into the new Orion update; SolarWinds did not notice anything and released the update with an official digital signature. The virus remained inactive for some time to avoid arousing suspicion and later began redirecting the company’s traffic to the hackers.
A “supply chain attack” is more dangerous than an attack on the end target because subcontractors do not have the same level of security as the main companies; if attackers manage to infiltrate a small company, they can use the digital signatures to reach the main target. 

5. How was it discovered?
   Some time later, the cybersecurity company FireEye detected unusual data traffic originating from SolarWinds' servers; upon investigation, they discovered hidden software that was leaking data.

6. What could have helped
   I believe that the zero-trust principle could be helpful in this situation, since this principle involves authenticity checks at every stage of data processing, even if the process was initiated by an administrator.

7. The broader lesson
   After this incident, the world realized that even systems signed with official digital signatures can contain malware. It also became clear that the zero-trust principle is simply essential in today's world.

8. Your personal takeaway
   The more I learn about programming, the more I realize that there are millions of ways in the world to leave me without money or accounts, but the truth is that you can’t protect yourself from everything, no matter how skilled a programmer you are. Sooner or later, you’ll make a mistake, but that doesn’t mean you can ignore security. This section has taught me that even when downloading updates from a company I trust, I can still lose my data—which makes me think more carefully about how to protect my data.


## References
[Links to docs, write-ups, or related notes.](https://www.youtube.com/watch?v=Kf7Motm36Go)
