import pandas as pd

ExcelSpreadsheetB3PreName = "testcase_wb3_only_pre.csv"
ExcelSpreadsheetB3PostName = "testcase_wb3_only_post.csv"

ExcelSpreadsheetB4PreName = "testcase_wb4_only_pre.csv"
ExcelSpreadsheetB4PostName = "testcase_wb4_only_post.csv"

ExcelSpreadsheetDMAPreName = "testcase_zipdma_pre.csv"
ExcelSpreadsheetDMAPostName = "testcase_zipdma_post.csv"

ExcelSpreadsheetB3PreName_loop = "testcase_wb3_only_pre_loop.csv"
ExcelSpreadsheetB3PostName_loop = "testcase_wb3_only_post_loop.csv"

ExcelSpreadsheetB4PreName_loop = "testcase_wb4_only_pre_loop.csv"
ExcelSpreadsheetB4PostName_loop = "testcase_wb4_only_post_loop.csv"

ExcelSpreadsheetDMAPreName_loop = "testcase_zipdma_pre_loop.csv"
ExcelSpreadsheetDMAPostName_loop = "testcase_zipdma_post_loop.csv"

WB3ValuesPre = pd.read_csv(ExcelSpreadsheetB3PreName,  skiprows=1).set_index(["bank","index"]).sort_index()
WB3ValuesPost = pd.read_csv(ExcelSpreadsheetB3PostName,  skiprows=1).set_index(["bank","index"]).sort_index()

WB4ValuesPre = pd.read_csv(ExcelSpreadsheetB4PreName,  skiprows=1).set_index(["bank","index"]).sort_index()
WB4ValuesPost = pd.read_csv(ExcelSpreadsheetB4PostName,  skiprows=1).set_index(["bank","index"]).sort_index()

DMAValuesPre = pd.read_csv(ExcelSpreadsheetDMAPreName,  skiprows=1).set_index(["bank","index"]).sort_index()
DMAValuesPost = pd.read_csv(ExcelSpreadsheetDMAPostName,  skiprows=1).set_index(["bank","index"]).sort_index()

WB3ValuesPre_loop = pd.read_csv(ExcelSpreadsheetB3PreName_loop).set_index(["bank","index"]).sort_index()
WB3ValuesPost_loop = pd.read_csv(ExcelSpreadsheetB3PostName_loop).set_index(["bank","index"]).sort_index()

WB4ValuesPre_loop = pd.read_csv(ExcelSpreadsheetB4PreName_loop).set_index(["bank","index"]).sort_index()
WB4ValuesPost_loop = pd.read_csv(ExcelSpreadsheetB4PostName_loop).set_index(["bank","index"]).sort_index()

DMAValuesPre_loop = pd.read_csv(ExcelSpreadsheetDMAPreName_loop).set_index(["bank","index"]).sort_index()
DMAValuesPost_loop = pd.read_csv(ExcelSpreadsheetDMAPostName_loop).set_index(["bank","index"]).sort_index()

def findWhatDiffers (LUT_values_pre, LUT_values_post):
    mask = LUT_values_pre["hex"].astype(str).str.strip().ne(LUT_values_post["hex"].astype(str).str.strip())

    print("Num diffs:", int(mask.sum()))
    print("Indices that differ:")
    print(mask[mask].index.to_list())   # list of (bank, index) tuples

    diff_rows = pd.concat(
        [LUT_values_pre.loc[mask, ["hex"]].rename(columns={"hex":"pre"}),
        LUT_values_post.loc[mask, ["hex"]].rename(columns={"hex":"post"})],
        axis=1
    )
    print(diff_rows)

print("B3-----------------", end=" ")
findWhatDiffers(WB3ValuesPre, WB3ValuesPost)
print("B4-----------------", end=" ")
findWhatDiffers(WB4ValuesPre, WB4ValuesPost)
print("DMA-----------------", end=" ")
findWhatDiffers(DMAValuesPre, DMAValuesPost)

print("B3 Loop-----------------", end=" ")
findWhatDiffers(WB3ValuesPre_loop, WB3ValuesPost_loop)
print("B4 Loop-----------------", end=" ")
findWhatDiffers(WB4ValuesPre_loop, WB4ValuesPost_loop)
print("DMA Loop-----------------", end=" ")
findWhatDiffers(DMAValuesPre_loop, DMAValuesPost_loop)