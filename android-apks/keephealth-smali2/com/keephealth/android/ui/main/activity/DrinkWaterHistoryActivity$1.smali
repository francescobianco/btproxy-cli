.class Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity$1;
.super Ljava/lang/Object;
.source "DrinkWaterHistoryActivity.java"

# interfaces
.implements Lcom/ldf/calendar/interf/OnSelectDateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;)V
    .registers 2

    .line 246
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectDate(Lcom/ldf/calendar/model/CalendarDate;)V
    .registers 5

    .line 249
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;

    iput-object p1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    .line 250
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;

    iget v1, p1, Lcom/ldf/calendar/model/CalendarDate;->year:I

    # setter for: Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;->mSeachYear:I
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;->access$002(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;I)I

    .line 251
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;

    iget v1, p1, Lcom/ldf/calendar/model/CalendarDate;->month:I

    # setter for: Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;->mSeachMonth:I
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;->access$102(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;I)I

    .line 252
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;

    iget p1, p1, Lcom/ldf/calendar/model/CalendarDate;->day:I

    # setter for: Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;->mSeachDay:I
    invoke-static {v0, p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;->access$202(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;I)I

    .line 253
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;->access$300(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;)Lcom/keephealth/android/base/BasePersenter;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;->mSeachYear:I
    invoke-static {v0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;->access$000(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;->mSeachMonth:I
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;->access$100(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;->mSeachDay:I
    invoke-static {v2}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;->access$200(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;)I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;->getHistoryData(III)V

    return-void
.end method

.method public onSelectOtherMonth(I)V
    .registers 2

    return-void
.end method
