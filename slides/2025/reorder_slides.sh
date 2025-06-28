#\!/bin/bash

# Create new file with reordered content
{
    # Part 1: Lines 1-513 (Opening through 5 principles)
    sed -n '1,513p' prompt-engineering-for-ai-fiction.md
    
    # Part 2: Lines 650-811 (Chain-of-Thought through Red Riding Hood examples)
    sed -n '650,811p' prompt-engineering-for-ai-fiction.md
    
    # Part 3: Lines 514-649 (Professional techniques and AI utilization)
    sed -n '514,649p' prompt-engineering-for-ai-fiction.md
    
    # Part 4: Lines 812 to end (CHARACTER.md onwards)
    sed -n '812,$p' prompt-engineering-for-ai-fiction.md
} > prompt-engineering-for-ai-fiction-reordered.md

echo "Reordering complete\!"
