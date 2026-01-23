import pandas as pd

cpuPreValues = pd.read_csv("cpu-pre-calc.csv",  skiprows=1).set_index(["bank","index"]).sort_index()
cpuPostValues = pd.read_csv("cpu-post-calc.csv",  skiprows=1).set_index(["bank","index"]).sort_index()

dmaPreValues = pd.read_csv("dma-pre-calc.csv",  skiprows=1).set_index(["bank","index"]).sort_index()
dmaPostValues = pd.read_csv("dma-post-calc.csv",  skiprows=1).set_index(["bank","index"]).sort_index()

def findWhatDiffers (LUT_values_pre, LUT_values_post):
    mask = LUT_values_pre["hex"].astype(str).str.strip().ne(LUT_values_post["hex"].astype(str).str.strip())

    print("Num diffs:", int(mask.sum()))
    print("Indices that differ:")
    print(mask[mask].index.to_list())   # list of (bank, index) tuples

    # If you want the before/after values at those indices:
    diff_rows = pd.concat(
        [LUT_values_pre.loc[mask, ["hex"]].rename(columns={"hex":"pre"}),
        LUT_values_post.loc[mask, ["hex"]].rename(columns={"hex":"post"})],
        axis=1
    )
    print(diff_rows)

print("CPU-----------------", end=" ")
findWhatDiffers(cpuPreValues, cpuPostValues)
print("DMA-----------------", end=" ")
findWhatDiffers(dmaPreValues, dmaPostValues)