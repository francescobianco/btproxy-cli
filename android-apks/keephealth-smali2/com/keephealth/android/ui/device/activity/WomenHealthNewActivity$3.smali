.class Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;
.super Ljava/lang/Object;
.source "WomenHealthNewActivity.java"

# interfaces
.implements Lcom/keephealth/android/views/ItemToggleLayout$OnToggleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->initListener()V
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

    .line 303
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onToggle$0(Landroid/content/DialogInterface;I)V
    .registers 2

    return-void
.end method

.method static synthetic lambda$onToggle$1(Landroid/content/DialogInterface;I)V
    .registers 2

    return-void
.end method

.method static synthetic lambda$onToggle$2(Landroid/content/DialogInterface;I)V
    .registers 2

    return-void
.end method

.method static synthetic lambda$onToggle$3(Landroid/content/DialogInterface;I)V
    .registers 2

    return-void
.end method

.method static synthetic lambda$onToggle$4(Landroid/content/DialogInterface;I)V
    .registers 2

    return-void
.end method

.method static synthetic lambda$onToggle$5(Landroid/content/DialogInterface;I)V
    .registers 2

    return-void
.end method


# virtual methods
.method public onToggle(Lcom/keephealth/android/views/ItemToggleLayout;Z)V
    .registers 14

    .line 306
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object p1

    if-nez p1, :cond_e

    .line 307
    const-string p1, "\u5bf9\u8c61\u4e3a\u7a7a!"

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    return-void

    :cond_e
    const p1, 0x7f100688

    .line 310
    const-string v0, ""

    const v1, 0x7f10071a

    const-string v2, "onToggle: "

    const v3, 0x7f100689

    const-wide/32 v4, 0x5265c00

    const v6, 0x7f100257

    if-eqz p2, :cond_4be

    .line 311
    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->isLessOrEqual:Z
    invoke-static {v7}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$100(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_56

    .line 312
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$000(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {p1, v8}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 313
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    return-void

    .line 316
    :cond_56
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$600(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "onToggle: \u7ecf\u671f\u4e2d\u95f4"

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;
    invoke-static {v9}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$200(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    move-result-object v9

    iget-object v10, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v10}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->isEndMenstrualDate5(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Z

    move-result v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, " -- "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v10, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->periodDate:Ljava/lang/Long;
    invoke-static {v10}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$700(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$200(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->isPeriodTime(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Z

    move-result v0

    if-eqz v0, :cond_120

    .line 319
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->TAG:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$800(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$200(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->setPeriodEditEnd(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)V

    .line 321
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$200(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->getIsPeriodTimeStart180(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object p1

    if-eqz p1, :cond_fd

    .line 323
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$200(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$200(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    move-result-object v3

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v4

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v5

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v6

    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->perimeter:I
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$900(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)I

    move-result v7

    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->dura:I
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->generateCycles(IIIIIII)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->setWomenHealthDataEditEnd(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;Ljava/util/List;)V

    .line 325
    :cond_fd
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v2

    # invokes: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->notifyMonthView(III)V
    invoke-static {p1, v0, v1, v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$1100(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;III)V

    goto/16 :goto_74c

    .line 326
    :cond_120
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$200(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->isEndMenstrualDate5(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Z

    move-result v0

    if-eqz v0, :cond_267

    .line 328
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$200(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->getIsPeriodNextStartTime5(J)Z

    move-result v0

    if-eqz v0, :cond_1be

    .line 329
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$200(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->isAboveSelectPerimeterAfter2(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Z

    move-result p1

    if-eqz p1, :cond_18c

    .line 330
    new-instance p1, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    invoke-direct {p1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    .line 331
    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3$$ExternalSyntheticLambda0;-><init>()V

    .line 332
    invoke-virtual {p1, v6, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    .line 334
    invoke-virtual {p1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->create()Lcom/keephealth/android/views/dialog/CommonDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/views/dialog/CommonDialog;->show()V

    .line 335
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$000(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {p1, v8}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    goto/16 :goto_25a

    .line 337
    :cond_18c
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$200(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->setPeriodEditEnd5(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)V

    .line 338
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v2

    # invokes: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->notifyMonthView(III)V
    invoke-static {p1, v0, v1, v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$1100(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;III)V

    goto/16 :goto_25a

    .line 341
    :cond_1be
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$200(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->getPeriodStartTime(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v0

    if-eqz v0, :cond_22a

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v0

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$200(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    move-result-object v2

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v7}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->getPeriodStartTime(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v9

    sub-long/2addr v0, v9

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->perimeter:I
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$900(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)I

    move-result v2

    int-to-long v9, v2

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$200(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    mul-long/2addr v9, v4

    cmp-long v0, v0, v9

    if-gez v0, :cond_22a

    .line 342
    new-instance v0, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    invoke-direct {v0, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    .line 343
    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3$$ExternalSyntheticLambda1;-><init>()V

    .line 344
    invoke-virtual {p1, v6, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    .line 345
    invoke-virtual {p1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->create()Lcom/keephealth/android/views/dialog/CommonDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/views/dialog/CommonDialog;->show()V

    goto :goto_24f

    .line 347
    :cond_22a
    new-instance p1, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    invoke-direct {p1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    .line 348
    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3$$ExternalSyntheticLambda2;-><init>()V

    .line 349
    invoke-virtual {p1, v6, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    .line 351
    invoke-virtual {p1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->create()Lcom/keephealth/android/views/dialog/CommonDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/views/dialog/CommonDialog;->show()V

    .line 353
    :goto_24f
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$000(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {p1, v8}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 356
    :goto_25a
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->TAG:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$1200(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onToggle: \u7ecf\u671f\u7ed3\u675f\u540e\u4e94\u5929"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_74c

    .line 357
    :cond_267
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$200(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->isStartPeriod10(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Z

    move-result p1

    if-eqz p1, :cond_2ce

    .line 358
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$200(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->getPeriodEnd(J)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object p1

    if-eqz p1, :cond_2c8

    .line 359
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v0

    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$200(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    move-result-object p1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->getPeriodEnd(J)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$200(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/32 v2, 0x1ee62800

    cmp-long p1, v0, v2

    if-ltz p1, :cond_74c

    .line 360
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # invokes: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->addPeriodBefore()V
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$1300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)V

    return-void

    .line 364
    :cond_2c8
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # invokes: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->addPeriodBefore()V
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$1300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)V

    return-void

    .line 369
    :cond_2ce
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    const-string v0, "period_date"

    invoke-static {p1, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    # setter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->periodDate:Ljava/lang/Long;
    invoke-static {p1, v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$702(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;Ljava/lang/Long;)Ljava/lang/Long;

    .line 370
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->periodDate:Ljava/lang/Long;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$700(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/keephealth/android/util/TimeUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "\u7ecf\u671f\u5f00\u59cb\u65f6\u95f4"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->periodDate:Ljava/lang/Long;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$700(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x2

    cmp-long p1, v3, v5

    if-gez p1, :cond_3b2

    .line 372
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    .line 373
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$200(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    move-result-object p1

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$200(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    move-result-object v3

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v4

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v5

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v6

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->perimeter:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$900(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)I

    move-result v7

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->dura:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-virtual/range {v3 .. v10}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->generateCycles(IIIIIII)Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$200(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->getIsPeriodTime()Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->setWomenHealthData(Ljava/util/List;Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)V

    .line 374
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    invoke-static {p1, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    # setter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->periodDate:Ljava/lang/Long;
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$702(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;Ljava/lang/Long;)Ljava/lang/Long;

    .line 375
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v1

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v3

    # invokes: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->notifyMonthView(III)V
    invoke-static {p1, v0, v1, v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$1100(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;III)V

    goto/16 :goto_49c

    .line 377
    :cond_3b2
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->periodDate:Ljava/lang/Long;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$700(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-gez p1, :cond_436

    .line 378
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    .line 379
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    # setter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->periodDate:Ljava/lang/Long;
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$702(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;Ljava/lang/Long;)Ljava/lang/Long;

    .line 380
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$200(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$200(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    move-result-object v3

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v4

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v5

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v6

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->perimeter:I
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$900(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)I

    move-result v7

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->dura:I
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-virtual/range {v3 .. v10}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->generateCycles(IIIIIII)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->setWomenHealthDataIsStart(Ljava/util/List;Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)V

    goto :goto_47b

    .line 382
    :cond_436
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$200(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$200(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    move-result-object v3

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v4

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v5

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v6

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->perimeter:I
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$900(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)I

    move-result v7

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->dura:I
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->generateCycles(IIIIIII)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->setWomenHealthDataStart(Ljava/util/List;Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)V

    .line 384
    :goto_47b
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v1

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v3

    # invokes: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->notifyMonthView(III)V
    invoke-static {p1, v0, v1, v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$1100(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;III)V

    .line 386
    :goto_49c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->periodDate:Ljava/lang/Long;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$700(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/keephealth/android/util/TimeUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u7ecf\u671f\u5f00\u59cb\u65f6\u95f42"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_74c

    .line 389
    :cond_4be
    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->isLessOrEqual:Z
    invoke-static {v7}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$100(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Z

    move-result v7

    const/4 v8, 0x1

    if-nez v7, :cond_4f1

    .line 390
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$000(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {p1, v8}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 391
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    return-void

    .line 395
    :cond_4f1
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$200(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->isPeriodTime(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Z

    move-result v0

    if-eqz v0, :cond_74c

    .line 397
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsStartData()I

    move-result v0

    if-ne v0, v8, :cond_605

    .line 399
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$200(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->cancelPeriodStart(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)V

    .line 400
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$200(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->getIsPeriodTimeStart180(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object p1

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u53d6\u6d88\u7ecf\u671f\u67e5\u627e\u79bb\u5f53\u524d\u65e5\u671f\u6700\u8fd1\u7684"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_5d9

    .line 404
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v0

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_59b

    .line 405
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$200(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$200(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    move-result-object v3

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v4

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v5

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v6

    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->perimeter:I
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$900(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)I

    move-result v7

    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->dura:I
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)I

    move-result v8

    const/4 v9, -0x1

    const/4 v10, 0x3

    invoke-virtual/range {v3 .. v10}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->generateCycles(IIIIIII)Ljava/util/List;

    move-result-object p1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$200(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->getIsPeriodTime()Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->setWomenHealthDataNextOne(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;Ljava/util/List;Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)V

    goto :goto_5e2

    .line 407
    :cond_59b
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$200(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$200(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    move-result-object v3

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v4

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v5

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v6

    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->perimeter:I
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$900(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)I

    move-result v7

    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->dura:I
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->generateCycles(IIIIIII)Ljava/util/List;

    move-result-object p1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$200(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->getIsPeriodTime()Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->setWomenHealthDataNextOneAfter(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;Ljava/util/List;Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)V

    goto :goto_5e2

    .line 411
    :cond_5d9
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$200(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->sendClearData()V

    .line 413
    :goto_5e2
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v2

    # invokes: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->notifyMonthView(III)V
    invoke-static {p1, v0, v1, v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$1100(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;III)V

    goto/16 :goto_74c

    .line 415
    :cond_605
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$200(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->isAboveSelectPerimeterAfter(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Z

    move-result v0

    if-eqz v0, :cond_649

    .line 416
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$000(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {p1, v8}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 417
    new-instance p1, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    invoke-direct {p1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    .line 418
    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3$$ExternalSyntheticLambda3;-><init>()V

    .line 419
    invoke-virtual {p1, v6, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    .line 421
    invoke-virtual {p1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->create()Lcom/keephealth/android/views/dialog/CommonDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/views/dialog/CommonDialog;->show()V

    goto/16 :goto_74c

    .line 423
    :cond_649
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$200(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v1

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;
    invoke-static {v7}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$200(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-long/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->getIsPeriodNextStartTime5(J)Z

    move-result v0

    if-nez v0, :cond_69b

    .line 424
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$000(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v8}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 425
    new-instance v0, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    invoke-direct {v0, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    .line 426
    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3$$ExternalSyntheticLambda4;-><init>()V

    .line 427
    invoke-virtual {p1, v6, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    .line 428
    invoke-virtual {p1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->create()Lcom/keephealth/android/views/dialog/CommonDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/views/dialog/CommonDialog;->show()V

    goto/16 :goto_74c

    .line 429
    :cond_69b
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$200(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->getPeriodStartTime(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object p1

    if-eqz p1, :cond_71c

    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v0

    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$200(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    move-result-object p1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->getPeriodStartTime(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v9

    sub-long/2addr v0, v9

    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$200(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-long/2addr v0, v4

    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->perimeter:I
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$900(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)I

    move-result p1

    int-to-long v9, p1

    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$200(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    mul-long/2addr v9, v4

    cmp-long p1, v0, v9

    if-lez p1, :cond_71c

    .line 430
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$000(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {p1, v8}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 431
    new-instance p1, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    invoke-direct {p1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    .line 432
    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3$$ExternalSyntheticLambda5;-><init>()V

    .line 433
    invoke-virtual {p1, v6, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    .line 435
    invoke-virtual {p1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->create()Lcom/keephealth/android/views/dialog/CommonDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/views/dialog/CommonDialog;->show()V

    goto :goto_74c

    .line 437
    :cond_71c
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$200(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->cancelPeriodEnd(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)V

    .line 438
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v2

    # invokes: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->notifyMonthView(III)V
    invoke-static {p1, v0, v1, v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$1100(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;III)V

    .line 444
    :cond_74c
    :goto_74c
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$200(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->sendData()V

    .line 445
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u5f00\u542f?: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "\u662f\u5426\u6765\u6708\u7ecf\u4e86"

    invoke-static {p2, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
