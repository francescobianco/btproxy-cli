.class Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$14;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "HRVHistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->initListener()V
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

    .line 648
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$14;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 5

    .line 651
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$14;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->mSeachYear:I
    invoke-static {v0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->access$500(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$14;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->mSeachMonth:I
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->access$600(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$14;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->mSeachDay:I
    invoke-static {v0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->access$700(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/DateUtil;->getSpecifiedDayBeforeDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 652
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 653
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 654
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$14;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    # setter for: Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->mSeachYear:I
    invoke-static {p1, v2}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->access$502(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;I)I

    .line 655
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$14;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v1

    # setter for: Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->mSeachMonth:I
    invoke-static {p1, v2}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->access$602(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;I)I

    .line 656
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$14;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    # setter for: Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->mSeachDay:I
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->access$702(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;I)I

    .line 657
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$14;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$14;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->mSeachYear:I
    invoke-static {v0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->access$500(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;)I

    move-result v0

    iput v0, p1, Lcom/ldf/calendar/model/CalendarDate;->year:I

    .line 658
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$14;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$14;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->mSeachMonth:I
    invoke-static {v0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->access$600(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;)I

    move-result v0

    iput v0, p1, Lcom/ldf/calendar/model/CalendarDate;->month:I

    .line 659
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$14;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$14;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->mSeachDay:I
    invoke-static {v0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->access$700(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;)I

    move-result v0

    iput v0, p1, Lcom/ldf/calendar/model/CalendarDate;->day:I

    .line 660
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$14;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/HRVViewModel;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$14;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->mSeachYear:I
    invoke-static {v0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->access$500(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$14;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->mSeachMonth:I
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->access$600(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$14;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->mSeachDay:I
    invoke-static {v2}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->access$700(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;)I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/keephealth/android/viewmodel/mine/HRVViewModel;->getHistoryData(III)V

    return-void
.end method
