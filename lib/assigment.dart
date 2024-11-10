import 'package:assignment/custom_card.dart';
import 'package:assignment/icon_container.dart';
import 'package:flutter/material.dart';
import 'package:assignment/dashed_line.dart';

class Assignment extends StatefulWidget {
  const Assignment({super.key});

  @override
  State<Assignment> createState() => _AssignmentState();
}

class _AssignmentState extends State<Assignment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Complaint Tracking",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.black,
              size: 25,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.grey[300],
                padding: const EdgeInsets.all(12),
                child: Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                    'It usually takes about 4 hours to finish this job.',
                    style: TextStyle(
                        color: Colors.grey[700], fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Stack(
              children: [
                const Positioned(
                  left: 45,
                  top: 80,
                  bottom: 50,
                  child: DashedLine(
                    height: 400,
                    color: Colors.green,
                    dashWidth: 5,
                    dashSpacing: 5,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Complaint Raised Card
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconContainer(
                          icon: Icons.feedback_outlined,
                          iconColor: Color.fromARGB(255, 103, 229, 248),
                          size: 30,
                        ),
                        SizedBox(width: 22),
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: CustomCard(
                            title: "Complaint Raised",
                            date: "On Mon, 12 Mar At 2:32 pm",
                            subtitle:
                                "Preferred Date/Time:\n12 Mar, 2024 07:00 PM",
                            titleColor: Color.fromARGB(255, 103, 229, 248),
                            dateColor: Colors.grey,
                            subtitleColor: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),

                    // Air Conditioning Card
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: 98), 
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: CustomCard(
                            title: "Air Conditioning",
                            date: "Low Cooling",
                            imagePaths: [
                              'assets/img.webp',
                              'assets/img.webp'
                            ],
                            titleColor: Color.fromARGB(255, 103, 229, 248),
                            dateColor: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),

                    // Task Assigned Card
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconContainer(
                          icon: Icons.check_box_outlined,
                          iconColor: Color.fromARGB(255, 235, 106, 2),
                          size: 30,
                        ),
                        SizedBox(width: 20),
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: CustomCard(
                            title: "Task Assigned",
                            date: "On Mon, 12 Mar\nAt 3:15 pm",
                            titleColor: Color.fromARGB(255, 235, 106, 2),
                            dateColor: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),

                    // Ramesh Jadhav Card
                    Padding(
                      padding: const EdgeInsets.fromLTRB(100, 0, 30, 0),
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 247,242,249),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Row(
                                  children: [
                                    Icon(
                                      Icons.account_circle_outlined,
                                      color: Colors.orange,
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      "Ramesh Jadhav",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: Colors.blue.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(10),
                                    shape: BoxShape.rectangle,
                                  ),
                                  child: const Icon(
                                    Icons.phone,
                                    color: Colors.blue,
                                    size: 20,
                                  ),
                                ),
                              ],
                            ),

                            const SizedBox(height: 8),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              child: DashedLine(
                                width: double.infinity, 
                                height: 1, 
                                color: Colors.grey[300]!,
                                dashWidth: 5,
                                dashSpacing: 3,
                                direction: Axis
                                    .horizontal, 
                              ),
                            ),

                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "On Mon, 12 Mar",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  "Ramesh Jadhav will address\nyour complaint at 6 pm.",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  "We'll try to resolve within the below preferred time:\n16 Mar, 2024 07:00 PM",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),

                    // Staff On Site Card
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconContainer(
                          icon: Icons.handyman,
                          iconColor: Color.fromARGB(255, 22, 118, 196),
                          size: 30,
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: CustomCard(
                            title: "Staff On Site",
                            date: "On Mon, 12 Mar\nAt 5:45 pm",
                            subtitle: "Complaint is in progress",
                            titleColor: Color.fromARGB(255, 22, 118, 196),
                            dateColor: Colors.black,
                            subtitleColor: Color.fromRGBO(2, 38, 92, 1),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),

                    // Complaint Resolved Card
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconContainer(
                          icon: Icons.check_circle,
                          iconColor: Color.fromARGB(255, 140, 194, 109),
                          size: 30,
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: CustomCard(
                            title: "Complaint Resolved",
                            date: "On Mon, 12 Mar\nAt 6:30 pm",
                            subtitle: "Issue successfully resolved",
                            titleColor: Color.fromARGB(255, 140, 194, 109),
                            dateColor: Colors.black,
                            subtitleColor: Color.fromRGBO(2, 38, 92, 1),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 30),
            //feedback button
            SizedBox(
              height: 50,
              width: 230,
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.thumb_up_outlined,
                  color: Color.fromARGB(255, 32, 104, 210),
                ),
                label: const Text(
                  "Give Us Feedback",
                  style: TextStyle(
                      color: Color.fromARGB(255, 32, 104, 210),
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  side: const BorderSide(
                      color: Color.fromARGB(255, 32, 104, 210),
                      width: 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "Your Feedback, Our Fuel for Improvement!",
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
