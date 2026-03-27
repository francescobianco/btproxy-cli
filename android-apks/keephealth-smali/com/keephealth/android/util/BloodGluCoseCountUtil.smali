.class public Lcom/keephealth/android/util/BloodGluCoseCountUtil;
.super Ljava/lang/Object;
.source "BloodGluCoseCountUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bloodGluCoseCount(IFF)F
    .registers 6

    const/high16 v0, 0x41200000    # 10.0f

    const/16 v1, 0x3c

    if-ge p0, v1, :cond_8

    div-float/2addr p1, v0

    return p1

    :cond_8
    const/16 v2, 0xa0

    if-le p0, v2, :cond_e

    div-float/2addr p2, v0

    return p2

    :cond_e
    sub-int/2addr p0, v1

    int-to-float v1, p0

    div-float/2addr p2, v0

    div-float/2addr p1, v0

    sub-float/2addr p2, p1

    mul-float/2addr v1, p2

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr v1, v0

    add-float/2addr v1, p1

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "  "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    div-float/2addr p2, v0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "gr43"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
