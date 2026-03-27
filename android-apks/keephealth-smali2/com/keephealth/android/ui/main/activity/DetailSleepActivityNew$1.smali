.class Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$1;
.super Ljava/lang/Object;
.source "DetailSleepActivityNew.java"

# interfaces
.implements Lcom/ldf/calendar/interf/OnSelectDateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->initView()V
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

    .line 257
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$1;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectDate(Lcom/ldf/calendar/model/CalendarDate;)V
    .registers 7

    .line 260
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$1;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;

    iput-object p1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    .line 261
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$1;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;

    iget v1, p1, Lcom/ldf/calendar/model/CalendarDate;->year:I

    iget v2, p1, Lcom/ldf/calendar/model/CalendarDate;->month:I

    iget v3, p1, Lcom/ldf/calendar/model/CalendarDate;->day:I

    invoke-static {v1, v2, v3}, Lcom/keephealth/android/util/ProDbUtils;->getDate(III)Ljava/util/Date;

    move-result-object v1

    # setter for: Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->mSearchDate:Ljava/util/Date;
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->access$1002(Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;Ljava/util/Date;)Ljava/util/Date;

    .line 262
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$1;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;

    # getter for: Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->mPresenter:Lcom/keephealth/android/base/BasePersenter;
    invoke-static {v0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->access$1100(Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;)Lcom/keephealth/android/base/BasePersenter;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;

    sget-object v2, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    iget v3, p1, Lcom/ldf/calendar/model/CalendarDate;->year:I

    iget v4, p1, Lcom/ldf/calendar/model/CalendarDate;->month:I

    iget p1, p1, Lcom/ldf/calendar/model/CalendarDate;->day:I

    invoke-static {v3, v4, p1}, Lcom/keephealth/android/util/ProDbUtils;->getDate(III)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->getDetailCurrent(Lcom/keephealth/android/model/bean/DetailTimeType;Ljava/util/Date;)Lcom/keephealth/android/model/bean/SleepDetailVO;

    move-result-object p1

    # invokes: Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->updateData(Lcom/keephealth/android/model/bean/SleepDetailVO;)V
    invoke-static {v0, p1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->access$1200(Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;Lcom/keephealth/android/model/bean/SleepDetailVO;)V

    return-void
.end method

.method public onSelectOtherMonth(I)V
    .registers 2

    return-void
.end method
