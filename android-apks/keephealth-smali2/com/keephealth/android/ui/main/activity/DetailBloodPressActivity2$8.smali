.class Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2$8;
.super Ljava/lang/Object;
.source "DetailBloodPressActivity2.java"

# interfaces
.implements Lcom/ldf/calendar/interf/OnSelectDateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;)V
    .registers 2

    .line 380
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2$8;->this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectDate(Lcom/ldf/calendar/model/CalendarDate;)V
    .registers 5

    .line 383
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2$8;->this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;

    iput-object p1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    .line 384
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2$8;->this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;

    iget v1, p1, Lcom/ldf/calendar/model/CalendarDate;->year:I

    # setter for: Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->mSeachYear:I
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->access$202(Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;I)I

    .line 385
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2$8;->this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;

    iget v1, p1, Lcom/ldf/calendar/model/CalendarDate;->month:I

    # setter for: Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->mSeachMonth:I
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->access$302(Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;I)I

    .line 386
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2$8;->this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;

    iget p1, p1, Lcom/ldf/calendar/model/CalendarDate;->day:I

    # setter for: Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->mSeachDay:I
    invoke-static {v0, p1}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->access$402(Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;I)I

    .line 387
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2$8;->this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;

    # getter for: Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->access$500(Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;)Lcom/keephealth/android/base/BasePersenter;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/main/BloodPressHistoryPresenter;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2$8;->this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;

    # getter for: Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->mSeachYear:I
    invoke-static {v0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->access$200(Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;)I

    move-result v0

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2$8;->this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;

    # getter for: Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->mSeachMonth:I
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->access$300(Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;)I

    move-result v1

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2$8;->this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;

    # getter for: Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->mSeachDay:I
    invoke-static {v2}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->access$400(Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;)I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/keephealth/android/persenter/main/BloodPressHistoryPresenter;->getHistoryData(III)V

    return-void
.end method

.method public onSelectOtherMonth(I)V
    .registers 2

    return-void
.end method
