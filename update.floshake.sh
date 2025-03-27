#!/bin/bash

# Navigate to your FloShake-GitHub directory
cd ~/Desktop/FloShake-GitHub

# Make sure all assets directories exist
mkdir -p assets/css
mkdir -p assets/images
mkdir -p _posts

# Create the CSS file
cat > assets/css/main.css << 'EOF'
/* FloShake Main CSS - Phase 1 Implementation */

:root {
  --primary-color: #1a365d;     /* Deep sapphire - knowledge depth */
  --secondary-color: #2a9d8f;   /* Teal flow - creative momentum */
  --accent-color: #e9c46a;      /* Quantum amber - insights */
  --light-color: #f8f9fa;       /* Foundation gray - structure */
  --text-color: #212529;        /* Main text color */
  --link-color: #2a9d8f;        /* Link color */
  --header-font: 'Montserrat', sans-serif;
  --body-font: 'Inter', sans-serif;
  --code-font: 'Fira Mono', monospace;
}

body {
  font-family: var(--body-font);
  line-height: 1.6;
  color: var(--text-color);
  max-width: 1200px;
  margin: 0 auto;
  padding: 0 2rem;
}

h1, h2, h3, h4, h5, h6 {
  font-family: var(--header-font);
  color: var(--primary-color);
  margin-top: 2rem;
}

h1 {
  font-size: 2.5rem;
  border-bottom: 4px solid var(--accent-color);
  padding-bottom: 0.5rem;
}

h2 {
  font-size: 2rem;
  border-bottom: 2px solid var(--secondary-color);
  padding-bottom: 0.3rem;
}

a {
  color: var(--link-color);
  text-decoration: none;
  transition: color 0.2s;
}

a:hover {
  color: var(--accent-color);
  text-decoration: underline;
}

code {
  font-family: var(--code-font);
  background-color: #f1f1f1;
  padding: 0.2rem 0.4rem;
  border-radius: 3px;
}

.site-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 1rem 0;
  border-bottom: 1px solid #eaeaea;
}

.site-title {
  font-weight: bold;
  font-size: 1.5rem;
}

.site-nav {
  display: flex;
  gap: 1.5rem;
}

.content {
  padding: 2rem 0;
}

/* Quantum state visualization */
.quantum-states {
  display: grid;
  grid-template-columns: 1fr 1fr;
  grid-template-rows: 1fr 1fr;
  gap: 1rem;
  max-width: 600px;
  margin: 2rem auto;
}

.state {
  padding: 1.5rem;
  border-radius: 8px;
  color: white;
  text-align: center;
}

.creation-state {
  background-color: var(--primary-color);
}

.integration-state {
  background-color: var(--secondary-color);
}

.application-state {
  background-color: var(--link-color);
}

.foundation-state {
  background-color: var(--accent-color);
  color: var(--text-color);
}

/* Flow state visualization */
.flow-states {
  display: flex;
  flex-direction: column;
  gap: 0.5rem;
  max-width: 600px;
  margin: 2rem auto;
}

.flow-phase {
  background: linear-gradient(90deg, var(--light-color) var(--width), transparent 0);
  padding: 1rem;
  border-radius: 4px;
  border-left: 4px solid var(--color);
}

.preparation {
  --width: 30%;
  --color: #e9ecef;
}

.entry {
  --width: 60%;
  --color: #ced4da;
}

.engagement {
  --width: 80%;
  --color: #adb5bd;
}

.deep {
  --width: 100%;
  --color: var(--accent-color);
}
EOF

# Create the SVG logo
cat > assets/images/logo-placeholder.svg << 'EOF'
<svg width="200" height="60" xmlns="http://www.w3.org/2000/svg">
  <rect width="100%" height="100%" fill="none"/>
  <text x="10" y="35" font-family="Montserrat, sans-serif" font-size="30" font-weight="bold" fill="#1a365d">
    Flo<tspan fill="#2a9d8f">Shake</tspan>
  </text>
  <text x="10" y="50" font-family="Inter, sans-serif" font-size="12" fill="#212529">
    Intelligence-Augmented Creativity
  </text>
</svg>
EOF

# Update the index.md file
cat > index.md << 'EOF'
---
layout: home
title: FloShake
---

<div class="hero-section">
  <img src="/assets/images/logo-placeholder.svg" alt="FloShake" class="logo">
  <h1>Blending Human Wisdom with AI to Enhance Creative Flow</h1>
  <p class="lead">FloShake represents a paradigm shift in knowledge work—transforming how humans interact with information through intelligence-augmented creativity.</p>
</div>

## Core Framework

<div class="quantum-states">
  <div class="state creation-state">Creation Space</div>
  <div class="state integration-state">Integration Space</div>
  <div class="state application-state">Application Space</div>
  <div class="state foundation-state">Foundation Space</div>
</div>

- **Flow Protection Intelligence**: ML-driven detection and protection of deep creative states
- **Quantum State Content Model**: Information existing simultaneously across multiple states
- **Serendipity Amplification**: Pattern recognition revealing hidden connections between ideas

[Learn More](/about/) | [Documentation](/docs/) | [Development Log](/blog/)
EOF

# Create blog post
cat > _posts/2025-03-26-first-deployment.md << 'EOF'
---
layout: post
title: "FloShake: First Public Deployment"
date: 2025-03-26
---

# FloShake: First Public Deployment

Today marks a significant milestone in the FloShake journey as we launch our public website and documentation framework. This deployment represents the transition from theoretical concept to tangible implementation.

## From Quantum Kitchen to FloShake

Originally conceived as "Quantum Kitchen," this project has evolved into FloShake—a framework that more precisely articulates our mission of blending human wisdom with AI to enhance creative flow. The name embodies our core philosophy: combining the right ingredients to achieve optimal results through the integration of human insight and artificial intelligence.

## Implementation Progress

The current deployment includes:
- Core conceptual framework documentation
- Initial system architecture specifications
- Development roadmap and milestone tracking
- Foundational technical specifications

## What's Next

In the coming weeks, we'll be expanding the documentation with:
- Detailed technical specifications for the Flow Protection Core
- Visual representations of the Quantum State Model
- Implementation examples for the Serendipity Engine
- API documentation for the Integration Framework

We invite you to follow our development journey as we build this transformative framework for intelligence-augmented creativity.
EOF

# Update the PROJECT_STATUS.md file
cat > PROJECT_STATUS.md << 'EOF'
# FloShake Project Status

**Last Updated:** March 26, 2025

## Implementation Status

The FloShake project has completed significant milestones in Week 1 implementation:

- **Core Repository Structure**: Established and deployed to GitHub
- **Documentation Framework**: Created foundational documentation structure for key components
- **Content Architecture**: Developed initial content framework with core explanations
- **Strategic Vision**: Translated Quantum Kitchen vision to FloShake strategic framework
- **GitHub Pages Deployment**: Successfully deployed to floshake.io
- **Visual Identity**: Implemented initial color scheme and typography
- **Development Blog**: Created first development update post

## In-Progress Components

The following components are currently under active development:

- **Visual Assets**: Enhancing design system with proper logo and diagrams
- **Component Documentation**: Expanding technical details for core modules
- **Flow Protection Documentation**: Adding ML architecture specifications
- **Quantum State Visualizations**: Creating interactive state transition diagrams

## Next Actions

Immediate next steps for continued implementation:

1. **Visual Identity Enhancement**
   - Design proper FloShake logo
   - Create quantum state transition diagrams
   - Develop flow protection visualizations
   - Enhance CSS with responsive design improvements

2. **Documentation Expansion**
   - Develop flow protection technical details
   - Create quantum state diagrams
   - Expand serendipity engine documentation
   - Enhance integration framework specifications

3. **Interactive Elements**
   - Develop simple quantum state visualization
   - Create flow state interactive simulator
   - Implement relationship mapping visualization
   - Build pattern discovery demonstration

## Milestone Tracking

**Phase 1: Technical Foundation (Week 1)**
- [x] Create directory structure
- [x] Establish documentation framework
- [x] Develop initial content architecture
- [x] GitHub repository setup
- [x] Configure GitHub Pages deployment
- [x] Connect custom domain
- [x] Implement basic visual identity
- [x] Create development blog

**Phase 2: Framework Documentation (Week 2)**
- [ ] Flow protection core documentation
- [ ] Quantum state documentation
- [ ] Serendipity engine documentation
- [ ] Integration documentation

**Phase 3: Interactive Demonstrations (Week 3)**
- [ ] Flow visualization prototype
- [ ] Quantum state visualization
- [ ] Integration examples
- [ ] Developer resources
EOF

# Update _config.yml to include Google Fonts and custom CSS
# This uses sed to append to the file rather than overwriting it
# First check if entries already exist to avoid duplication
if ! grep -q "google_fonts:" _config.yml; then
  echo "
# Google Fonts
google_fonts: 
  - \"Montserrat:400,700\"
  - \"Inter:400,700\"
  - \"Fira+Mono:400\"
" >> _config.yml
fi

if ! grep -q "stylesheets:" _config.yml; then
  echo "
# Custom CSS
stylesheets:
  - \"/assets/css/main.css\"
" >> _config.yml
fi

# Add all changes to git
git add .

# Commit the changes
git commit -m "Week 1 Implementation: Visual identity, CSS, blog post, and homepage updates"

# Push to GitHub
git push origin main

echo "All updates have been pushed to GitHub. The changes should be live on floshake.io in a few minutes."