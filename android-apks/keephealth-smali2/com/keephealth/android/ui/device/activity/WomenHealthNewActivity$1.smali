.class Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$1;
.super Ljava/lang/Object;
.source "WomenHealthNewActivity.java"

# interfaces
.implements Lcom/keephealth/android/views/calendarview/listener/OnMultiChooseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->initCalendar()V
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

    .line 174
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMultiChoose(Landroid/view/View;Lcom/keephealth/android/views/calendarview/bean/DateBean;Z)V
    .registers 10

    .line 177
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->calendarNew:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarYear()I

    move-result p1

    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarMonth()I

    move-result p3

    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarDay()I

    move-result v2

    invoke-static {p1, p3, v2}, Lcom/keephealth/android/util/TimeUtil;->getStartDateToStamp(III)J

    move-result-wide v2

    cmp-long p1, v0, v2

    const/16 p3, 0x8

    const/4 v0, 0x0

    if-gez p1, :cond_37

    .line 178
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$000(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->showDate:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 179
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$000(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->hideDate:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_10d

    .line 181
    :cond_37
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->calendarNew:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " -- "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarYear()I

    move-result v1

    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarMonth()I

    move-result v2

    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarDay()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/keephealth/android/util/TimeUtil;->getStartDateToStamp(III)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " -- 1555200000"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "\u65f6\u95f4\u5dee: "

    invoke-static {v1, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    iget-object v1, p1, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->calendarNew:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarYear()I

    move-result v3

    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarMonth()I

    move-result v4

    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarDay()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/keephealth/android/util/TimeUtil;->getStartDateToStamp(III)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide v3, 0x39ef8b000L

    cmp-long v1, v1, v3

    if-gtz v1, :cond_95

    const/4 v1, 0x1

    goto :goto_96

    :cond_95
    move v1, v0

    :goto_96
    # setter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->isLessOrEqual:Z
    invoke-static {p1, v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$102(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;Z)Z

    .line 183
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$000(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->showDate:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 184
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$000(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->hideDate:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 185
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$200(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    move-result-object p3

    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarYear()I

    move-result v0

    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarMonth()I

    move-result v1

    invoke-virtual {p3, v0, v1}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->getMonthList(II)Ljava/util/List;

    move-result-object p3

    iput-object p3, p1, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNewMonth:Ljava/util/List;

    .line 186
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$200(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    move-result-object p3

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNewMonth:Ljava/util/List;

    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarDay()I

    move-result v1

    invoke-virtual {p3, v0, v1}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->getDataOnMonth(Ljava/util/List;I)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object p3

    # setter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {p1, p3}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$302(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 187
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object p1

    if-nez p1, :cond_f1

    .line 188
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarYear()I

    move-result p3

    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarMonth()I

    move-result v0

    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarDay()I

    move-result v1

    # invokes: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->initDateBean(III)V
    invoke-static {p1, p3, v0, v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$400(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;III)V

    .line 190
    :cond_f1
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object p1

    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {p3}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object p3

    invoke-virtual {p3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    mul-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setSolarDate(J)V

    .line 191
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # invokes: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->setPeriodData()V
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$500(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)V

    .line 193
    :goto_10d
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "\u70b9\u51fb\u65e5\u671f: "

    invoke-static {p2, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
