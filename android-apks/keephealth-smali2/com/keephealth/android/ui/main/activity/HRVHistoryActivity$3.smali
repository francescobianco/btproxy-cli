.class Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$3;
.super Ljava/lang/Object;
.source "HRVHistoryActivity.java"

# interfaces
.implements Lcom/ldf/calendar/interf/OnSelectDateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;)V
    .registers 2

    .line 332
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectDate(Lcom/ldf/calendar/model/CalendarDate;)V
    .registers 5

    .line 335
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    iput-object p1, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    .line 336
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    iget v1, p1, Lcom/ldf/calendar/model/CalendarDate;->year:I

    # setter for: Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->mSeachYear:I
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->access$502(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;I)I

    .line 337
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    iget v1, p1, Lcom/ldf/calendar/model/CalendarDate;->month:I

    # setter for: Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->mSeachMonth:I
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->access$602(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;I)I

    .line 338
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    iget p1, p1, Lcom/ldf/calendar/model/CalendarDate;->day:I

    # setter for: Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->mSeachDay:I
    invoke-static {v0, p1}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->access$702(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;I)I

    .line 339
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/HRVViewModel;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->mSeachYear:I
    invoke-static {v0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->access$500(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->mSeachMonth:I
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->access$600(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->mSeachDay:I
    invoke-static {v2}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->access$700(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;)I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/keephealth/android/viewmodel/mine/HRVViewModel;->getHistoryData(III)V

    return-void
.end method

.method public onSelectOtherMonth(I)V
    .registers 2

    return-void
.end method
