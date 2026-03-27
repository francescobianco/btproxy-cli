.class Lcom/keephealth/android/ui/main/activity/DetailActivity2$9;
.super Lcom/github/mikephil/charting/formatter/ValueFormatter;
.source "DetailActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/DetailActivity2;->updateMonth(Lcom/keephealth/android/model/bean/StepDetailVO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity2;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/DetailActivity2;)V
    .registers 2

    .line 563
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2$9;->this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity2;

    invoke-direct {p0}, Lcom/github/mikephil/charting/formatter/ValueFormatter;-><init>()V

    return-void
.end method


# virtual methods
.method public getFormattedValue(F)Ljava/lang/String;
    .registers 4

    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/keephealth/android/util/StringUtils;->roundedNumber(D)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
