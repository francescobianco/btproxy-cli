.class Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$10;
.super Ljava/lang/Object;
.source "WomenHealthNewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->addPeriodBefore()V
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

    .line 526
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onClick$0$com-keephealth-android-ui-device-activity-WomenHealthNewActivity$10(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 533
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$000(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 11

    .line 529
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$200(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->isAboveSelectPerimeter(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 530
    new-instance p1, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    invoke-direct {p1, p2}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    .line 531
    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f100689

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$10$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$10$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$10;)V

    const v0, 0x7f100257

    .line 532
    invoke-virtual {p1, v0, p2}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    .line 534
    invoke-virtual {p1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->create()Lcom/keephealth/android/views/dialog/CommonDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/views/dialog/CommonDialog;->show()V

    goto/16 :goto_162

    .line 536
    :cond_3f
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->TAG:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$1500(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onClick: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$200(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->getIsPeriodNextStartTime(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " -- "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->periodDate:Ljava/lang/Long;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$700(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$200(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->getIsPeriodTimeStart1801(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object p1

    if-eqz p1, :cond_d3

    .line 539
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$200(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$200(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    move-result-object v0

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v2

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v3

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->perimeter:I
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$900(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)I

    move-result v4

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->dura:I
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->generateCycles(IIIIIII)Ljava/util/List;

    move-result-object p2

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->setWomenHealthDataStartAdd2(Ljava/util/List;Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)V

    goto :goto_138

    .line 541
    :cond_d3
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$200(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$200(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    move-result-object v0

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v2

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v3

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->perimeter:I
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$900(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)I

    move-result v4

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->dura:I
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual/range {v0 .. v7}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->generateCycles(IIIIIII)Ljava/util/List;

    move-result-object p2

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->setWomenHealthDataStartAdd2(Ljava/util/List;Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)V

    .line 542
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "period_date"

    invoke-static {p1, v0, p2}, Lcom/keephealth/android/util/SharePreferenceUtils;->putLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    .line 543
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    invoke-static {p1, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    # setter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->periodDate:Ljava/lang/Long;
    invoke-static {p1, p2}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$702(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;Ljava/lang/Long;)Ljava/lang/Long;

    .line 545
    :goto_138
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result p2

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v1

    # invokes: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->notifyMonthView(III)V
    invoke-static {p1, p2, v0, v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$1100(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;III)V

    .line 546
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$200(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->sendData()V

    :goto_162
    return-void
.end method
