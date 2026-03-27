.class Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$7;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "RemindSportSetNewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)V
    .registers 2

    .line 350
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onClickL$0$com-keephealth-android-ui-device-activity-RemindSportSetNewActivity$7(III)V
    .registers 9

    .line 354
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->endHour:I
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$500(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)I

    move-result p2

    const p3, 0x7f1004f3

    const v0, 0x7f100387

    const-string v1, " "

    if-nez p2, :cond_8b

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->endMin:I
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$600(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)I

    move-result p2

    if-nez p2, :cond_8b

    .line 355
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->endHour:I
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$500(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)I

    move-result p2

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->startHour:I
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)I

    move-result v2

    sub-int/2addr p2, v2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    mul-int/lit8 p2, p2, 0x3c

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->endMin:I
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$600(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->startMin:I
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$400(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr p2, v2

    mul-int/lit8 p1, p1, 0x5

    if-ge p2, p1, :cond_50

    .line 356
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    # invokes: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->showToast(Ljava/lang/String;)V
    invoke-static {p1, p2}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$1200(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;Ljava/lang/String;)V

    goto/16 :goto_131

    .line 358
    :cond_50
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$1100(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)Lcom/keephealth/android/model/bean/LongSit;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/keephealth/android/model/bean/LongSit;->setInterval(I)V

    .line 359
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->tvRemindDelay:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;
    invoke-static {p3}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$1100(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)Lcom/keephealth/android/model/bean/LongSit;

    move-result-object p3

    invoke-virtual {p3}, Lcom/keephealth/android/model/bean/LongSit;->getInterval()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    invoke-virtual {p3}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_131

    .line 362
    :cond_8b
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->TAG:Ljava/lang/String;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$1300(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SelectRemindDelay: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->endHour:I
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$500(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->startHour:I
    invoke-static {v4}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)I

    move-result v4

    sub-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x3c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->endMin:I
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$600(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->startMin:I
    invoke-static {v4}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$400(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->endHour:I
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$500(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)I

    move-result p2

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->startHour:I
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)I

    move-result v2

    sub-int/2addr p2, v2

    mul-int/lit8 p2, p2, 0x3c

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->endMin:I
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$600(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->startMin:I
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$400(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr p2, v2

    mul-int/lit8 p1, p1, 0x5

    if-ge p2, p1, :cond_f8

    .line 364
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    # invokes: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->showToast(Ljava/lang/String;)V
    invoke-static {p1, p2}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$1400(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;Ljava/lang/String;)V

    goto :goto_131

    .line 366
    :cond_f8
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$1100(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)Lcom/keephealth/android/model/bean/LongSit;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/keephealth/android/model/bean/LongSit;->setInterval(I)V

    .line 367
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->tvRemindDelay:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;
    invoke-static {p3}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$1100(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)Lcom/keephealth/android/model/bean/LongSit;

    move-result-object p3

    invoke-virtual {p3}, Lcom/keephealth/android/model/bean/LongSit;->getInterval()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    invoke-virtual {p3}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_131
    return-void
.end method

.method protected onClickL(Landroid/view/View;)V
    .registers 4

    .line 353
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$1100(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)Lcom/keephealth/android/model/bean/LongSit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/LongSit;->getInterval()I

    move-result v0

    new-instance v1, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$7$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$7$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$7;)V

    invoke-static {p1, v0, v1}, Lcom/keephealth/android/util/DialogHelperNew;->showWheelRemindDelayDialog(Landroid/app/Activity;ILcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;)Landroid/app/Dialog;

    return-void
.end method
