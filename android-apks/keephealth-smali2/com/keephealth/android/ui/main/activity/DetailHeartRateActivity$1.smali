.class Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity$1;
.super Ljava/lang/Object;
.source "DetailHeartRateActivity.java"

# interfaces
.implements Lcom/ldf/calendar/interf/OnSelectDateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;)V
    .registers 2

    .line 77
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectDate(Lcom/ldf/calendar/model/CalendarDate;)V
    .registers 7

    .line 80
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;

    iput-object p1, v0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    .line 81
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;

    iget v1, p1, Lcom/ldf/calendar/model/CalendarDate;->year:I

    iget v2, p1, Lcom/ldf/calendar/model/CalendarDate;->month:I

    iget v3, p1, Lcom/ldf/calendar/model/CalendarDate;->day:I

    invoke-static {v1, v2, v3}, Lcom/keephealth/android/util/ProDbUtils;->getDate(III)Ljava/util/Date;

    move-result-object v1

    # setter for: Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->mSearchDate:Ljava/util/Date;
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->access$002(Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;Ljava/util/Date;)Ljava/util/Date;

    .line 82
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;
    invoke-static {v0}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->access$100(Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;)Lcom/keephealth/android/base/BasePersenter;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/persenter/main/DetailHrPresenter;

    sget-object v2, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    iget v3, p1, Lcom/ldf/calendar/model/CalendarDate;->year:I

    iget v4, p1, Lcom/ldf/calendar/model/CalendarDate;->month:I

    iget p1, p1, Lcom/ldf/calendar/model/CalendarDate;->day:I

    invoke-static {v3, v4, p1}, Lcom/keephealth/android/util/ProDbUtils;->getDate(III)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->getDetailCurrent(Lcom/keephealth/android/model/bean/DetailTimeType;Ljava/util/Date;)Lcom/keephealth/android/model/bean/HeartRateDetailVO;

    move-result-object p1

    # invokes: Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->updateByDate(Lcom/keephealth/android/model/bean/HeartRateDetailVO;)V
    invoke-static {v0, p1}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->access$200(Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;Lcom/keephealth/android/model/bean/HeartRateDetailVO;)V

    return-void
.end method

.method public onSelectOtherMonth(I)V
    .registers 2

    return-void
.end method
