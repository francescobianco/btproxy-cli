.class public Lcom/keephealth/android/views/mpchat/RangeBarDataSet;
.super Lcom/github/mikephil/charting/data/BarDataSet;
.source "RangeBarDataSet.java"


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/data/BarEntry;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/data/BarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getEntryForIndex(I)Lcom/github/mikephil/charting/data/BarEntry;
    .registers 5

    .line 15
    invoke-super {p0, p1}, Lcom/github/mikephil/charting/data/BarDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object p1

    check-cast p1, Lcom/github/mikephil/charting/data/BarEntry;

    .line 16
    instance-of v0, p1, Lcom/keephealth/android/views/mpchat/RangeBarEntry;

    if-eqz v0, :cond_1e

    .line 17
    check-cast p1, Lcom/keephealth/android/views/mpchat/RangeBarEntry;

    .line 19
    new-instance v0, Lcom/keephealth/android/views/mpchat/RangeBarEntry;

    invoke-virtual {p1}, Lcom/keephealth/android/views/mpchat/RangeBarEntry;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/keephealth/android/views/mpchat/RangeBarEntry;->getRange()F

    move-result v2

    invoke-virtual {p1}, Lcom/keephealth/android/views/mpchat/RangeBarEntry;->getLow()F

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lcom/keephealth/android/views/mpchat/RangeBarEntry;-><init>(FFF)V

    return-object v0

    .line 21
    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Entries must be of type RangeBarEntry"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;
    .registers 2

    .line 7
    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/mpchat/RangeBarDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/BarEntry;

    move-result-object p1

    return-object p1
.end method
