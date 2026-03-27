.class Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$4;
.super Ljava/lang/Object;
.source "DetailStreeCoseActivity.java"

# interfaces
.implements Lcom/ldf/calendar/interf/OnSelectDateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;)V
    .registers 2

    .line 510
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$4;->this$0:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectDate(Lcom/ldf/calendar/model/CalendarDate;)V
    .registers 7

    .line 513
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$4;->this$0:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;

    iput-object p1, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    .line 514
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$4;->this$0:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;

    iget v1, p1, Lcom/ldf/calendar/model/CalendarDate;->year:I

    # setter for: Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mSeachYear:I
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->access$502(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;I)I

    .line 515
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$4;->this$0:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;

    iget v1, p1, Lcom/ldf/calendar/model/CalendarDate;->month:I

    # setter for: Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mSeachMonth:I
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->access$602(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;I)I

    .line 516
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$4;->this$0:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;

    iget p1, p1, Lcom/ldf/calendar/model/CalendarDate;->day:I

    # setter for: Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mSeachDay:I
    invoke-static {v0, p1}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->access$702(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;I)I

    .line 517
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$4;->this$0:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->access$900(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;)Lcom/keephealth/android/base/BasePersenter;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/persenter/main/DetailHrPresenter;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$4;->this$0:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->access$800(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;)Lcom/keephealth/android/model/bean/DetailTimeType;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$4;->this$0:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mSeachYear:I
    invoke-static {v2}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->access$500(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$4;->this$0:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mSeachMonth:I
    invoke-static {v3}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->access$600(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$4;->this$0:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mSeachDay:I
    invoke-static {v4}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->access$700(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/keephealth/android/util/ProDbUtils;->getDate(III)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->getDetailBloodCoseCurrent(Lcom/keephealth/android/model/bean/DetailTimeType;Ljava/util/Date;)Lcom/keephealth/android/model/bean/HeartRateDetailVO;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->updateByDate(Lcom/keephealth/android/model/bean/HeartRateDetailVO;)V

    return-void
.end method

.method public onSelectOtherMonth(I)V
    .registers 2

    return-void
.end method
