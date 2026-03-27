.class Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$12;
.super Ljava/lang/Object;
.source "WomenHealthNewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)V
    .registers 2

    .line 684
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .line 687
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$1600(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4fee\u6539\u5468\u671f\u548c\u65f6\u957f: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->periodDate:Ljava/lang/Long;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$700(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    const-string v1, "dura"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->dura:I
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$1002(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;I)I

    .line 689
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    const-string v1, "perimeter"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->perimeter:I
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$902(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;I)I

    .line 690
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->periodDate:Ljava/lang/Long;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$700(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-gez v0, :cond_45

    return-void

    .line 693
    :cond_45
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # invokes: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->setWomenHealthDate()V
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$1700(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)V

    .line 694
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$200(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$200(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->periodDate:Ljava/lang/Long;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$700(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->getDateWomenHealthBean(J)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->getIsPeriodEndTimeChange(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v0

    if-nez v0, :cond_b2

    .line 697
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$200(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$200(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    move-result-object v2

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->yearPeriod:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$1800(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)I

    move-result v3

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->monthPeriod:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$1900(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)I

    move-result v4

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->dayPeriod:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$2000(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)I

    move-result v5

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->perimeter:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$900(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)I

    move-result v6

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->dura:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x3

    invoke-virtual/range {v2 .. v9}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->generateCycles(IIIIIII)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$200(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    move-result-object v2

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->periodDate:Ljava/lang/Long;
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$700(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->getDateWomenHealthBean(J)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->setWomenHealthDataEdit(Ljava/util/List;Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)V

    goto :goto_e5

    .line 699
    :cond_b2
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$200(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$200(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    move-result-object v3

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->yearPeriod:I
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$1800(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)I

    move-result v4

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->monthPeriod:I
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$1900(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)I

    move-result v5

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->dayPeriod:I
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$2000(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)I

    move-result v6

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->perimeter:I
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$900(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)I

    move-result v7

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->dura:I
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)I

    move-result v8

    const/4 v9, -0x1

    const/4 v10, 0x3

    invoke-virtual/range {v3 .. v10}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->generateCycles(IIIIIII)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->setWomenHealthDataChangeCycle(Ljava/util/List;Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)V

    .line 701
    :goto_e5
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$000(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->calendar:Lcom/keephealth/android/views/calendarview/weiget/CalendarView;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->today()V

    .line 702
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v2

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v3

    # invokes: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->notifyMonthView(III)V
    invoke-static {v0, v1, v2, v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$1100(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;III)V

    .line 703
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # invokes: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->initViewData()V
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$2100(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)V

    return-void
.end method
