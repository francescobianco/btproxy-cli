.class Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$5;
.super Lcom/github/mikephil/charting/formatter/ValueFormatter;
.source "DetailSleepActivityNew.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->setSleepChartNewHigh(Lcom/keephealth/android/model/bean/SleepDetailVO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;

.field final synthetic val$stXaxis:Ljava/util/List;

.field final synthetic val$xAxis:Lcom/github/mikephil/charting/components/XAxis;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;Ljava/util/List;Lcom/github/mikephil/charting/components/XAxis;)V
    .registers 4

    .line 1111
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$5;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;

    iput-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$5;->val$stXaxis:Ljava/util/List;

    iput-object p3, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$5;->val$xAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-direct {p0}, Lcom/github/mikephil/charting/formatter/ValueFormatter;-><init>()V

    return-void
.end method


# virtual methods
.method public getFormattedValue(F)Ljava/lang/String;
    .registers 7

    .line 1114
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$5;->val$stXaxis:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, ""

    if-lez v0, :cond_7c

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_16

    .line 1116
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$5;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;

    const/4 v2, 0x0

    # setter for: Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->interval:I
    invoke-static {v0, v2}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->access$702(Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;I)I

    goto :goto_24

    .line 1118
    :cond_16
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$5;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;

    # getter for: Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->interval:I
    invoke-static {v0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->access$700(Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;)I

    move-result v0

    if-nez v0, :cond_24

    .line 1119
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$5;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;

    float-to-int v2, p1

    # setter for: Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->interval:I
    invoke-static {v0, v2}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->access$702(Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;I)I

    :cond_24
    :goto_24
    float-to-int p1, p1

    .line 1123
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$5;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;

    # getter for: Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->access$800(Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getFormattedValue: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$5;->val$stXaxis:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$5;->val$xAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/XAxis;->getAxisMaximum()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_66

    .line 1125
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$5;->val$stXaxis:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 1127
    :cond_66
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$5;->val$stXaxis:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p1

    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$5;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;

    # getter for: Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->interval:I
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->access$700(Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;)I

    move-result p1

    if-gt v0, p1, :cond_7c

    .line 1128
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$5;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;

    # getter for: Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->endTime:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->access$900(Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7c
    return-object v1
.end method
