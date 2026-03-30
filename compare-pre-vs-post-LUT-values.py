import pandas as pd

ExcelSpreadsheetB3PreName = "cpu-pre-calc.csv"
ExcelSpreadsheetB3PostCalc1Name = "cpu-post-calc1.csv"
ExcelSpreadsheetB3PostCalc2Name = "cpu-post-calc2.csv"
ExcelSpreadsheetB3ResultsName = "cpu-results.csv"

ExcelSpreadsheetB4PreName = "wb4emul-pre-calc.csv"
ExcelSpreadsheetB4PostCalc1Name = "wb4emul-post-calc1.csv"
ExcelSpreadsheetB4PostCalc2Name = "wb4emul-post-calc2.csv"
ExcelSpreadsheetB4ResultsName = "wb4emul-results.csv"

ExcelSpreadsheetDMAPreName = "dma-pre-calc.csv"
ExcelSpreadsheetDMAPostCalc1Name = "dma-post-calc1.csv"
ExcelSpreadsheetDMAPostCalc2Name = "dma-post-calc2.csv"
ExcelSpreadsheetDMAResultsName = "dma-results.csv"


def normalize_hex(value):
    text = str(value).strip()
    if text.startswith("0x") or text.startswith("0X"):
        text = text[2:]
    if text == "" or text.lower() == "nan":
        text = "0"
    return f"{int(text, 16):08x}"


def load_lut_csv(filename):
    df = pd.read_csv(filename, skiprows=1, dtype={"bank": str, "index": int, "hex": str})
    df["hex"] = df["hex"].map(normalize_hex)
    return df.set_index(["bank", "index"]).sort_index()


def load_results_csv(filename):
    df = pd.read_csv(filename, skiprows=1, dtype={"calc_idx": int, "input_hex": str, "output_hex": str})
    df["input_hex"] = df["input_hex"].map(normalize_hex)
    df["output_hex"] = df["output_hex"].map(normalize_hex)
    return df


WB3ValuesPre = load_lut_csv(ExcelSpreadsheetB3PreName)
WB3ValuesPostCalc1 = load_lut_csv(ExcelSpreadsheetB3PostCalc1Name)
WB3ValuesPostCalc2 = load_lut_csv(ExcelSpreadsheetB3PostCalc2Name)
WB3Results = load_results_csv(ExcelSpreadsheetB3ResultsName)

WB4ValuesPre = load_lut_csv(ExcelSpreadsheetB4PreName)
WB4ValuesPostCalc1 = load_lut_csv(ExcelSpreadsheetB4PostCalc1Name)
WB4ValuesPostCalc2 = load_lut_csv(ExcelSpreadsheetB4PostCalc2Name)
WB4Results = load_results_csv(ExcelSpreadsheetB4ResultsName)

DMAValuesPre = load_lut_csv(ExcelSpreadsheetDMAPreName)
DMAValuesPostCalc1 = load_lut_csv(ExcelSpreadsheetDMAPostCalc1Name)
DMAValuesPostCalc2 = load_lut_csv(ExcelSpreadsheetDMAPostCalc2Name)
DMAResults = load_results_csv(ExcelSpreadsheetDMAResultsName)


def findWhatDiffers(LUT_values_pre, LUT_values_post):
    mask = LUT_values_pre["hex"].ne(LUT_values_post["hex"])

    print("Num diffs:", int(mask.sum()))
    print("Indices that differ:")
    print(mask[mask].index.to_list())

    diff_rows = pd.concat(
        [LUT_values_pre.loc[mask, ["hex"]].rename(columns={"hex": "pre"}),
         LUT_values_post.loc[mask, ["hex"]].rename(columns={"hex": "post"})],
        axis=1,
    )
    print(diff_rows)


def showRepeatedCalculationResults(result_df):
    print("Results:")
    print(result_df)
    if len(result_df.index) >= 2:
        print("Calculation outputs match:", result_df.iloc[0]["output_hex"] == result_df.iloc[1]["output_hex"])


print("CPU Pre vs Post Calc1-----------------", end=" ")
findWhatDiffers(WB3ValuesPre, WB3ValuesPostCalc1)
print("CPU Pre vs Post Calc2-----------------", end=" ")
findWhatDiffers(WB3ValuesPre, WB3ValuesPostCalc2)
print("CPU Post Calc1 vs Post Calc2-----------------", end=" ")
findWhatDiffers(WB3ValuesPostCalc1, WB3ValuesPostCalc2)
print("CPU Results-----------------")
showRepeatedCalculationResults(WB3Results)

print("WB4 Emulated Pre vs Post Calc1-----------------", end=" ")
findWhatDiffers(WB4ValuesPre, WB4ValuesPostCalc1)
print("WB4 Emulated Pre vs Post Calc2-----------------", end=" ")
findWhatDiffers(WB4ValuesPre, WB4ValuesPostCalc2)
print("WB4 Emulated Post Calc1 vs Post Calc2-----------------", end=" ")
findWhatDiffers(WB4ValuesPostCalc1, WB4ValuesPostCalc2)
print("WB4 Emulated Results-----------------")
showRepeatedCalculationResults(WB4Results)

print("DMA Pre vs Post Calc1-----------------", end=" ")
findWhatDiffers(DMAValuesPre, DMAValuesPostCalc1)
print("DMA Pre vs Post Calc2-----------------", end=" ")
findWhatDiffers(DMAValuesPre, DMAValuesPostCalc2)
print("DMA Post Calc1 vs Post Calc2-----------------", end=" ")
findWhatDiffers(DMAValuesPostCalc1, DMAValuesPostCalc2)
print("DMA Results-----------------")
showRepeatedCalculationResults(DMAResults)
