import pandas as pd

# Load datasets
netflix = pd.read_csv("datasets/netflix_titles.csv")
amazon = pd.read_csv("datasets/amazon_prime_titles.csv")
disney = pd.read_csv("datasets/disney_plus_titles.csv")
hulu = pd.read_csv("datasets/hulu_titles.csv")

# Add platform column
netflix["platform"] = "Netflix"
amazon["platform"] = "Amazon Prime"
disney["platform"] = "Disney+"
hulu["platform"] = "Hulu"

# Merge datasets
merged_df = pd.concat(
    [netflix, amazon, disney, hulu],
    ignore_index=True
)

# Rename listed_in to genre
merged_df.rename(
    columns={"listed_in": "genre"},
    inplace=True
)

# Create content_id
merged_df.insert(
    0,
    "content_id",
    range(1, len(merged_df) + 1)
)

# Save merged dataset
merged_df.to_csv(
    "datasets/merged_dataset.csv",
    index=False
)

print("Merged dataset created successfully!")
print(f"Total records: {len(merged_df)}")
print(f"Total columns: {merged_df.shape[1]}")