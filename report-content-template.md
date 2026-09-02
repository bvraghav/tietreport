# Proposal to Project Report

1. [Overview](#overview)  
2. [More nuanced perspective](#more-nuanced-perspective)  
3. [Example Details](#example-details)  
4. [Concluding](#concluding),

# Overview

Transforming your proposal into a final project report is an incremental process of replacing **intentions** with **results**. Since a proposal serves as a roadmap, the final report becomes the record of the journey taken.

### **1\. Expanding the Core Structure**

To move from proposal to report, you must shift your perspective from what you *will* do to what you *have* done.

* **Introduction & Objectives:** Keep these sections but update them to reflect the final state of the project. If your objectives shifted during development, explain why.  
* **Methodology to Implementation:** In a proposal, the methodology is a plan. In a report, this expands into a detailed **Implementation** section. For STEM projects, this includes your final system architecture, code modules, and integration workflows.  
* **Results & Analysis:** This is a entirely new section. Replace your "Deliverables" list from the proposal with actual raw data, prototypes, and analyzed findings.  
* **Conclusion & Future Work:** Summarize the impact of your results  and suggest how others might improve upon your work.

### **2\. Transitioning STEM Technical Content**

For technical projects like AR or 3D modeling, your methodology evolves into technical documentation.

* **From Plan to Architecture:** Move from specifying intended tools (e.g., ARCore, Unity) to documenting the final **System Architecture** used.  
* **Documenting Development:** Expand on how you handled surface detection, asset management, and UI design. Replace "proposed" scaling methods with documentation of your actual 1:1 metric scaling implementation.  
* **Validation:** Your proposal lists testing goals ; your report must provide the actual results of **Unit Testing**, **Performance Benchmarking** (like actual FPS achieved), and **User Acceptance Testing** (UAT).

### 

### **3\. Incremental Development Steps**

| Phase | Proposal Content | Report Evolution |
| :---- | :---- | :---- |
| **Initial** |  **SMART Objectives**  | Validated goals; noted any deviations. |
| **Mid-Project** |  **Methodology & Tools**  | Detailed **System Design** and code structure.  |
| **Execution** |  **Proposed Timeline**  | Actual log of milestones reached.  |
| **Final** |  **Anticipated Risks**  |  **Evaluation & Testing** results (Drift analysis, etc.).  |

### **4\. Pro-Tips for the Final Report**

* **Density Over Fluff:** Just as in the proposal, professors value clear, concise information over high word counts.  
* **Visual Documentation:** Replace the proposal's flowchart or table  with actual screenshots of your software, photos of your setup, or graphs of your data.  
* **Addressing Constraints:** Revisit the constraints you identified (like lighting or safety)  and discuss how you successfully mitigated them in the final build.

# More Nuanced Perspective

Transforming an academic proposal into a final project report is an incremental process of replacing planned intentions with documented results. Based on the provided guide, here is a holistic overview of how to modify and improvise upon your document through to completion:

### **1\. Shift from Intent to Execution**

The most significant change is moving from a "roadmap" of what you intend to do to a record of what was actually achieved.

* **Methodology to System Architecture:** In a STEM project, your methodology evolves from a plan into a detailed description of your final **System Architecture** and **Tech Stack**.  
* **Module Development:** For the final report, expand on how you implemented specific features like **Surface Detection**, **Asset Management**, and **UI Design**.  
* **Timeline to Project History:** Convert your weekly task breakdown into a summary of project milestones, noting any shifts in scope or timing.

### **2\. Add Validated Results and Testing**

A proposal only anticipates outcomes, whereas a report must validate them through rigorous testing.

* **Performance Benchmarking:** Include technical data such as **Frames Per Second (FPS)** and **latency** measurements to prove system stability.  
* **User Acceptance Testing (UAT):** Document the results of "drift" analysis—checking if virtual objcts remain stable in their environment over time.  
* **Unit Testing:** Provide a log of individual feature tests, such as verifying if rotation or placement logic worked as intended.

### **3\. Refine and Expand Core Sections**

* **Introduction/Problem Statement:** Refine this section (ideally 250–400 words) to ensure it accurately reflects the final problem addressed by your completed work.  
* **Objectives:** Revisit your **SMART objectives**. In your report, state clearly whether each objective was met, partially met, or modified.  
* **Resources:** Update your resource list to reflect what was actually used, such as specific **AR libraries** (ARCore, ARKit) or hardware like **LiDAR-enabled devices**.

### **4\. Address Real-World Constraints**

While the proposal mentions anticipated risks, the final report should discuss how you managed them during development.

* **Environmental Constraints:** Discuss how the final system performed in low-light conditions or on reflective surfaces.  
* **Technical Challenges:** Detail how you solved issues like **coordinate mapping** (1:1 scaling) or **physics engine** clipping.

### **5\. Final Formatting Adjustments**

* **Tone:** Maintain a professional tone using active verbs to describe your completed actions.  
* **Density:** Ensure the final document remains dense with information rather than "fluff," focusing on proving the project's academic or scientific soundness.  
* **Visuals:** Replace the proposal's placeholder tables with final data visualizations, flowcharts of your actual technical workflow, and screenshots of the finished product.

# Example Details

These are the "meat" of your final report and transition your proposal's "Methodology" into a documented reality.

### **1\. Section: Technical System Architecture**

In the proposal, you listed tools. In the report, you explain how they interact. You should replace your methodology flowchart with a high-level system diagram.

**Drafting Template:**

* **The Tech Stack:** "The project was developed using **Unity 2022.3** as the primary engine, utilizing the **ARCore SDK** for spatial mapping. C\# was used for logic scripting, while **Blender** served as the pipeline for 1:1 metric-scale 3D modeling."  
* **The Workflow:** Describe the data flow. "The system initiates by polling the device camera for feature points. Once a horizontal plane is detected via **Raycasting**, the coordinate system is anchored to a 0,0,0 origin point to ensure stability."

### **2\. Section: Module-by-Module Implementation**

Break down the "doing" part of your project into logical modules. This proves the complexity of your work.

* **Module A: Environment Scanning & Plane Detection**  
  * *Details:* How did you handle lighting? Did you use Depth APIs?  
  * *Improvement:* "While the proposal suggested basic plane detection, the implementation utilized **Light Estimation APIs** to dynamically adjust the shaders on virtual objects, increasing realism."  
* **Module B: Interaction Logic**  
  * *Details:* How does the user move or rotate objects?  
  * *Improvement:* "We implemented a **Gesture Recognition** module that translates screen-space touch inputs into world-space transformations, restricted by collision boxes to prevent 'ghosting' through walls."

### **3\. Section: Testing and Validation (The "Output")**

This is the most critical addition for a final report. Use the SMART objectives from your proposal to create a "Pass/Fail" or "Result" table.

**Key Metrics to Include:**

* **Performance Benchmarking:** "The application maintained a consistent **55-60 FPS** on a Samsung S22, though performance dropped to 40 FPS in low-light environments due to increased CPU load from feature-point searching."  
* **Drift Analysis:** "In a 10-minute stress test, the virtual object's anchor point drifted by less than 2cm, meeting our accuracy objective."

# Concluding

To make this specific to **your** actual project, start by looking into:

1. **What is the specific title or goal of your project?** (e.g., An AR furniture app? A data analysis tool?)  
2. **What was the hardest technical hurdle you faced?** (I can help you write the "Challenges & Mitigations" section for this).

