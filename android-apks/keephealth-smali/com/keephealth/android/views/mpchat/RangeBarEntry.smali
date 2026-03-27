.class public Lcom/keephealth/android/views/mpchat/RangeBarEntry;
.super Lcom/github/mikephil/charting/data/BarEntry;
.source "RangeBarEntry.java"


# instance fields
.field private final high:F

.field private final low:F


# direct methods
.method public constructor <init>(FFF)V
    .registers 5

    sub-float v0, p3, p2

    .line 10
    invoke-direct {p0, p1, v0}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V

    .line 11
    iput p2, p0, Lcom/keephealth/android/views/mpchat/RangeBarEntry;->low:F

    .line 12
    iput p3, p0, Lcom/keephealth/android/views/mpchat/RangeBarEntry;->high:F

    return-void
.end method


# virtual methods
.method public getHigh()F
    .registers 2

    .line 20
    iget v0, p0, Lcom/keephealth/android/views/mpchat/RangeBarEntry;->high:F

    return v0
.end method

.method public getLow()F
    .registers 2

    .line 16
    iget v0, p0, Lcom/keephealth/android/views/mpchat/RangeBarEntry;->low:F

    return v0
.end method

.method public getRange()F
    .registers 3

    .line 25
    iget v0, p0, Lcom/keephealth/android/views/mpchat/RangeBarEntry;->high:F

    iget v1, p0, Lcom/keephealth/android/views/mpchat/RangeBarEntry;->low:F

    sub-float/2addr v0, v1

    return v0
.end method
