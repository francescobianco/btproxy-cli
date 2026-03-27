.class Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2$2;
.super Ljava/lang/Object;
.source "DetailStreeCoseActivity2.java"

# interfaces
.implements Lcom/ldf/calendar/interf/OnSelectDateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;)V
    .registers 2

    .line 312
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2$2;->this$0:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectDate(Lcom/ldf/calendar/model/CalendarDate;)V
    .registers 7

    .line 315
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2$2;->this$0:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;

    iput-object p1, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    .line 316
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2$2;->this$0:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;

    iget v1, p1, Lcom/ldf/calendar/model/CalendarDate;->year:I

    # setter for: Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mSeachYear:I
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->access$002(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;I)I

    .line 317
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2$2;->this$0:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;

    iget v1, p1, Lcom/ldf/calendar/model/CalendarDate;->month:I

    # setter for: Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mSeachMonth:I
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->access$102(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;I)I

    .line 318
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2$2;->this$0:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;

    iget p1, p1, Lcom/ldf/calendar/model/CalendarDate;->day:I

    # setter for: Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mSeachDay:I
    invoke-static {v0, p1}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->access$202(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;I)I

    .line 319
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2$2;->this$0:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;

    # getter for: Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->access$400(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;)Lcom/keephealth/android/base/BasePersenter;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/persenter/main/DetailHrPresenter;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2$2;->this$0:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;

    # getter for: Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->access$300(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;)Lcom/keephealth/android/model/bean/DetailTimeType;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2$2;->this$0:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;

    # getter for: Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mSeachYear:I
    invoke-static {v2}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->access$000(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;)I

    move-result v2

    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2$2;->this$0:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;

    # getter for: Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mSeachMonth:I
    invoke-static {v3}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->access$100(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;)I

    move-result v3

    iget-object v4, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2$2;->this$0:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;

    # getter for: Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mSeachDay:I
    invoke-static {v4}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->access$200(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/keephealth/android/util/ProDbUtils;->getDate(III)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->getDetailBloodCoseCurrent(Lcom/keephealth/android/model/bean/DetailTimeType;Ljava/util/Date;)Lcom/keephealth/android/model/bean/HeartRateDetailVO;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->updateByDate(Lcom/keephealth/android/model/bean/HeartRateDetailVO;)V

    return-void
.end method

.method public onSelectOtherMonth(I)V
    .registers 2

    return-void
.end method
