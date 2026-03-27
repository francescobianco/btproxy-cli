.class public Lcom/keephealth/android/model/bean/BarChartProperties;
.super Ljava/lang/Object;
.source "BarChartProperties.java"


# instance fields
.field public barColor:I

.field public yLineColor:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lcom/keephealth/android/model/bean/BarChartProperties;->barColor:I

    .line 15
    iput v0, p0, Lcom/keephealth/android/model/bean/BarChartProperties;->yLineColor:I

    return-void
.end method
