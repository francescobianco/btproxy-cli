.class Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$2;
.super Ljava/lang/Object;
.source "DetailSleepActivityNew.java"

# interfaces
.implements Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->initSleepChart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;)V
    .registers 2

    .line 339
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$2;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNothingSelected()V
    .registers 1

    return-void
.end method

.method public onValueSelected(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/highlight/Highlight;)V
    .registers 5

    .line 342
    move-object p2, p1

    check-cast p2, Lcom/github/mikephil/charting/data/CandleEntry;

    .line 343
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$2;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v1

    float-to-int v1, v1

    # setter for: Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->selectIndex:I
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->access$002(Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;I)I

    .line 344
    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/CandleEntry;->getType()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_16

    return-void

    .line 347
    :cond_16
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$2;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;

    # getter for: Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->selectIndex:I
    invoke-static {v0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->access$000(Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;)I

    move-result v1

    # invokes: Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->setDrawHigh(Lcom/github/mikephil/charting/data/CandleEntry;Lcom/github/mikephil/charting/data/Entry;I)V
    invoke-static {v0, p2, p1, v1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->access$100(Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;Lcom/github/mikephil/charting/data/CandleEntry;Lcom/github/mikephil/charting/data/Entry;I)V

    .line 348
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$2;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;

    # setter for: Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->candleEntryLast:Lcom/github/mikephil/charting/data/CandleEntry;
    invoke-static {v0, p2}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->access$202(Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;Lcom/github/mikephil/charting/data/CandleEntry;)Lcom/github/mikephil/charting/data/CandleEntry;

    .line 349
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$2;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;

    # setter for: Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->eLast:Lcom/github/mikephil/charting/data/Entry;
    invoke-static {p2, p1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->access$302(Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;Lcom/github/mikephil/charting/data/Entry;)Lcom/github/mikephil/charting/data/Entry;

    .line 350
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$2;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;

    # getter for: Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->selectIndex:I
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->access$000(Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;)I

    move-result p2

    # setter for: Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->selectIndexLast:I
    invoke-static {p1, p2}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->access$402(Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;I)I

    return-void
.end method
