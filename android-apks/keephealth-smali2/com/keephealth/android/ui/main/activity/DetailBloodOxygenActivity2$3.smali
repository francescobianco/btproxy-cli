.class Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$3;
.super Ljava/lang/Object;
.source "DetailBloodOxygenActivity2.java"

# interfaces
.implements Lcom/ldf/calendar/interf/OnSelectDateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;)V
    .registers 2

    .line 358
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$3;->this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectDate(Lcom/ldf/calendar/model/CalendarDate;)V
    .registers 5

    .line 361
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$3;->this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;

    iput-object p1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    .line 362
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$3;->this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;

    iget v1, p1, Lcom/ldf/calendar/model/CalendarDate;->year:I

    # setter for: Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mSeachYear:I
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->access$502(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;I)I

    .line 363
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$3;->this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;

    iget v1, p1, Lcom/ldf/calendar/model/CalendarDate;->month:I

    # setter for: Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mSeachMonth:I
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->access$602(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;I)I

    .line 364
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$3;->this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;

    iget p1, p1, Lcom/ldf/calendar/model/CalendarDate;->day:I

    # setter for: Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mSeachDay:I
    invoke-static {v0, p1}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->access$702(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;I)I

    .line 365
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$3;->this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;

    # getter for: Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->access$800(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;)Lcom/keephealth/android/base/BasePersenter;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$3;->this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;

    # getter for: Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mSeachYear:I
    invoke-static {v0}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->access$500(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;)I

    move-result v0

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$3;->this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;

    # getter for: Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mSeachMonth:I
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->access$600(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;)I

    move-result v1

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$3;->this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;

    # getter for: Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mSeachDay:I
    invoke-static {v2}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->access$700(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;)I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;->getHistoryData(III)V

    return-void
.end method

.method public onSelectOtherMonth(I)V
    .registers 2

    return-void
.end method
