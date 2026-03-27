.class Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2$1;
.super Ljava/lang/Object;
.source "TempHistoryActivity2.java"

# interfaces
.implements Lcom/ldf/calendar/interf/OnSelectDateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;)V
    .registers 2

    .line 179
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2$1;->this$0:Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectDate(Lcom/ldf/calendar/model/CalendarDate;)V
    .registers 5

    .line 182
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2$1;->this$0:Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;

    iput-object p1, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    .line 183
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2$1;->this$0:Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;

    iget v1, p1, Lcom/ldf/calendar/model/CalendarDate;->year:I

    # setter for: Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mSeachYear:I
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->access$002(Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;I)I

    .line 184
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2$1;->this$0:Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;

    iget v1, p1, Lcom/ldf/calendar/model/CalendarDate;->month:I

    # setter for: Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mSeachMonth:I
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->access$102(Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;I)I

    .line 185
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2$1;->this$0:Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;

    iget p1, p1, Lcom/ldf/calendar/model/CalendarDate;->day:I

    # setter for: Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mSeachDay:I
    invoke-static {v0, p1}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->access$202(Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;I)I

    .line 186
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2$1;->this$0:Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;

    # getter for: Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->access$300(Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;)Lcom/keephealth/android/base/BasePersenter;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2$1;->this$0:Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;

    # getter for: Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mSeachYear:I
    invoke-static {v0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->access$000(Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;)I

    move-result v0

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2$1;->this$0:Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;

    # getter for: Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mSeachMonth:I
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->access$100(Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;)I

    move-result v1

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2$1;->this$0:Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;

    # getter for: Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mSeachDay:I
    invoke-static {v2}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->access$200(Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;)I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;->getHistoryData(III)V

    return-void
.end method

.method public onSelectOtherMonth(I)V
    .registers 2

    return-void
.end method
