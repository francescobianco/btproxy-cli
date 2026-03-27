.class Lcom/keephealth/android/ui/main/activity/DetailActivity$1;
.super Ljava/lang/Object;
.source "DetailActivity.java"

# interfaces
.implements Lcom/ldf/calendar/interf/OnSelectDateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/DetailActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/DetailActivity;)V
    .registers 2

    .line 92
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectDate(Lcom/ldf/calendar/model/CalendarDate;)V
    .registers 7

    .line 95
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity;

    iput-object p1, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    .line 96
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity;

    iget v1, p1, Lcom/ldf/calendar/model/CalendarDate;->year:I

    iget v2, p1, Lcom/ldf/calendar/model/CalendarDate;->month:I

    iget v3, p1, Lcom/ldf/calendar/model/CalendarDate;->day:I

    invoke-static {v1, v2, v3}, Lcom/keephealth/android/util/ProDbUtils;->getDate(III)Ljava/util/Date;

    move-result-object v1

    # setter for: Lcom/keephealth/android/ui/main/activity/DetailActivity;->mSearchDate:Ljava/util/Date;
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/main/activity/DetailActivity;->access$002(Lcom/keephealth/android/ui/main/activity/DetailActivity;Ljava/util/Date;)Ljava/util/Date;

    .line 97
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/DetailActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;
    invoke-static {v0}, Lcom/keephealth/android/ui/main/activity/DetailActivity;->access$100(Lcom/keephealth/android/ui/main/activity/DetailActivity;)Lcom/keephealth/android/base/BasePersenter;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/persenter/main/DetailPresenter;

    sget-object v2, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    iget v3, p1, Lcom/ldf/calendar/model/CalendarDate;->year:I

    iget v4, p1, Lcom/ldf/calendar/model/CalendarDate;->month:I

    iget p1, p1, Lcom/ldf/calendar/model/CalendarDate;->day:I

    invoke-static {v3, v4, p1}, Lcom/keephealth/android/util/ProDbUtils;->getDate(III)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/keephealth/android/persenter/main/DetailPresenter;->getDetailCurrent(Lcom/keephealth/android/model/bean/DetailTimeType;Ljava/util/Date;)Lcom/keephealth/android/model/bean/StepDetailVO;

    move-result-object p1

    # invokes: Lcom/keephealth/android/ui/main/activity/DetailActivity;->updateByDate(Lcom/keephealth/android/model/bean/StepDetailVO;)V
    invoke-static {v0, p1}, Lcom/keephealth/android/ui/main/activity/DetailActivity;->access$200(Lcom/keephealth/android/ui/main/activity/DetailActivity;Lcom/keephealth/android/model/bean/StepDetailVO;)V

    return-void
.end method

.method public onSelectOtherMonth(I)V
    .registers 2

    return-void
.end method
