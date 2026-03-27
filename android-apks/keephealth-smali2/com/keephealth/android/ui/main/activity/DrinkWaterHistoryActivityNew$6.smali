.class Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$6;
.super Ljava/lang/Object;
.source "DrinkWaterHistoryActivityNew.java"

# interfaces
.implements Lcom/ldf/calendar/interf/OnSelectDateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;)V
    .registers 2

    .line 397
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$6;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectDate(Lcom/ldf/calendar/model/CalendarDate;)V
    .registers 5

    .line 400
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$6;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    iput-object p1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    .line 401
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$6;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    iget v1, p1, Lcom/ldf/calendar/model/CalendarDate;->year:I

    # setter for: Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mSeachYear:I
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->access$002(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;I)I

    .line 402
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$6;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    iget v1, p1, Lcom/ldf/calendar/model/CalendarDate;->month:I

    # setter for: Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mSeachMonth:I
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->access$102(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;I)I

    .line 403
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$6;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    iget p1, p1, Lcom/ldf/calendar/model/CalendarDate;->day:I

    # setter for: Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mSeachDay:I
    invoke-static {v0, p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->access$202(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;I)I

    .line 404
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$6;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    # getter for: Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mPresenter:Lcom/keephealth/android/base/BasePersenter;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->access$500(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;)Lcom/keephealth/android/base/BasePersenter;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$6;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    # getter for: Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mSeachYear:I
    invoke-static {v0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->access$000(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;)I

    move-result v0

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$6;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    # getter for: Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mSeachMonth:I
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->access$100(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;)I

    move-result v1

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$6;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    # getter for: Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mSeachDay:I
    invoke-static {v2}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->access$200(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;)I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;->getHistoryData(III)V

    return-void
.end method

.method public onSelectOtherMonth(I)V
    .registers 2

    return-void
.end method
