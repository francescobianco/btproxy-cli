.class Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$11;
.super Ljava/lang/Object;
.source "RemindSportSetNewActivity.java"

# interfaces
.implements Lcom/keephealth/android/views/dialog/TimePickerDialog$OnClickCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->initDatePicker()V
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

    .line 478
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 2

    .line 481
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->endTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->dismiss()V

    return-void
.end method

.method public onSure(Ljava/lang/String;II)V
    .registers 7

    const v0, 0x7f1004f3

    if-nez p2, :cond_75

    if-nez p3, :cond_75

    .line 487
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->startHour:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)I

    move-result v1

    sub-int v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->startMin:I
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$400(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)I

    move-result v2

    sub-int v2, p3, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$1100(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)Lcom/keephealth/android/model/bean/LongSit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/LongSit;->getInterval()I

    move-result v2

    if-ge v1, v2, :cond_3d

    .line 488
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    # invokes: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->showToast(Ljava/lang/String;)V
    invoke-static {p1, p2}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$1800(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;Ljava/lang/String;)V

    goto/16 :goto_102

    .line 490
    :cond_3d
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->endTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->dismiss()V

    .line 491
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->tvRemindEndTime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 492
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->endHour:I
    invoke-static {p1, p2}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$502(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;I)I

    .line 493
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->endMin:I
    invoke-static {p1, p3}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$602(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;I)I

    .line 494
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$1100(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)Lcom/keephealth/android/model/bean/LongSit;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->endHour:I
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$500(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/model/bean/LongSit;->setEffectiveEndHour(I)V

    .line 495
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$1100(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)Lcom/keephealth/android/model/bean/LongSit;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->endMin:I
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$600(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/model/bean/LongSit;->setEffectiveEndMinute(I)V

    goto/16 :goto_102

    .line 498
    :cond_75
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->startHour:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)I

    move-result v1

    if-lt p2, v1, :cond_f2

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->startHour:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)I

    move-result v1

    if-ne p2, v1, :cond_8e

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->startMin:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$400(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)I

    move-result v1

    if-gt p3, v1, :cond_8e

    goto :goto_f2

    .line 500
    :cond_8e
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->startHour:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)I

    move-result v1

    sub-int v1, p2, v1

    mul-int/lit8 v1, v1, 0x3c

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->startMin:I
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$400(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)I

    move-result v2

    sub-int v2, p3, v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$1100(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)Lcom/keephealth/android/model/bean/LongSit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/LongSit;->getInterval()I

    move-result v2

    if-ge v1, v2, :cond_bb

    .line 501
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    # invokes: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->showToast(Ljava/lang/String;)V
    invoke-static {p1, p2}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$2000(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;Ljava/lang/String;)V

    goto :goto_102

    .line 503
    :cond_bb
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->endTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->dismiss()V

    .line 504
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->tvRemindEndTime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 505
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->endHour:I
    invoke-static {p1, p2}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$502(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;I)I

    .line 506
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->endMin:I
    invoke-static {p1, p3}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$602(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;I)I

    .line 507
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$1100(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)Lcom/keephealth/android/model/bean/LongSit;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->endHour:I
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$500(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/model/bean/LongSit;->setEffectiveEndHour(I)V

    .line 508
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$1100(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)Lcom/keephealth/android/model/bean/LongSit;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->endMin:I
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$600(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/model/bean/LongSit;->setEffectiveEndMinute(I)V

    goto :goto_102

    .line 499
    :cond_f2
    :goto_f2
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f1004f2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    # invokes: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->showToast(Ljava/lang/String;)V
    invoke-static {p1, p2}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$1900(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;Ljava/lang/String;)V

    :goto_102
    return-void
.end method
