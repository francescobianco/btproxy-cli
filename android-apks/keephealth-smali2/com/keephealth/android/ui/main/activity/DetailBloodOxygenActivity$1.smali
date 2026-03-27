.class Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity$1;
.super Ljava/lang/Object;
.source "DetailBloodOxygenActivity.java"

# interfaces
.implements Lcom/ldf/calendar/interf/OnSelectDateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;)V
    .registers 2

    .line 192
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectDate(Lcom/ldf/calendar/model/CalendarDate;)V
    .registers 5

    .line 195
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;

    iput-object p1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    .line 196
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;

    iget v1, p1, Lcom/ldf/calendar/model/CalendarDate;->year:I

    # setter for: Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->mSeachYear:I
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->access$002(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;I)I

    .line 197
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;

    iget v1, p1, Lcom/ldf/calendar/model/CalendarDate;->month:I

    # setter for: Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->mSeachMonth:I
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->access$102(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;I)I

    .line 198
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;

    iget p1, p1, Lcom/ldf/calendar/model/CalendarDate;->day:I

    # setter for: Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->mSeachDay:I
    invoke-static {v0, p1}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->access$202(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;I)I

    .line 199
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->access$300(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;)Lcom/keephealth/android/base/BasePersenter;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->mSeachYear:I
    invoke-static {v0}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->access$000(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->mSeachMonth:I
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->access$100(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->mSeachDay:I
    invoke-static {v2}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->access$200(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;)I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;->getHistoryData(III)V

    return-void
.end method

.method public onSelectOtherMonth(I)V
    .registers 2

    return-void
.end method
