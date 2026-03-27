.class Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$9;
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

    .line 403
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 2

    .line 406
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->startTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->dismiss()V

    return-void
.end method

.method public onSure(Ljava/lang/String;II)V
    .registers 6

    if-nez p2, :cond_3c

    if-nez p3, :cond_3c

    .line 412
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->startTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->dismiss()V

    .line 413
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->tvRemindStartTime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->startHour:I
    invoke-static {p1, p2}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$302(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;I)I

    .line 415
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->startMin:I
    invoke-static {p1, p3}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$402(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;I)I

    .line 416
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$1100(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)Lcom/keephealth/android/model/bean/LongSit;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->startHour:I
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/model/bean/LongSit;->setEffectiveStartHour(I)V

    .line 417
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$1100(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)Lcom/keephealth/android/model/bean/LongSit;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->startMin:I
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$400(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/model/bean/LongSit;->setEffectiveStartMinute(I)V

    goto/16 :goto_112

    .line 419
    :cond_3c
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->endHour:I
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$500(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)I

    move-result v0

    if-gt p2, v0, :cond_bb

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->endHour:I
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$500(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)I

    move-result v0

    if-ne p2, v0, :cond_55

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->endMin:I
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$600(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)I

    move-result v0

    if-lt p3, v0, :cond_55

    goto :goto_bb

    .line 430
    :cond_55
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->endHour:I
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$500(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)I

    move-result v0

    sub-int/2addr v0, p2

    mul-int/lit8 v0, v0, 0x3c

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->endMin:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$600(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)I

    move-result v1

    sub-int/2addr v1, p3

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$1100(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)Lcom/keephealth/android/model/bean/LongSit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/LongSit;->getInterval()I

    move-result v1

    if-ge v0, v1, :cond_84

    .line 431
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f1004f3

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    # invokes: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->showToast(Ljava/lang/String;)V
    invoke-static {p1, p2}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$1600(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;Ljava/lang/String;)V

    goto/16 :goto_112

    .line 433
    :cond_84
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->startTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->dismiss()V

    .line 434
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->tvRemindStartTime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->startHour:I
    invoke-static {p1, p2}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$302(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;I)I

    .line 436
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->startMin:I
    invoke-static {p1, p3}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$402(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;I)I

    .line 437
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$1100(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)Lcom/keephealth/android/model/bean/LongSit;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->startHour:I
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/model/bean/LongSit;->setEffectiveStartHour(I)V

    .line 438
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$1100(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)Lcom/keephealth/android/model/bean/LongSit;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->startMin:I
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$400(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/model/bean/LongSit;->setEffectiveStartMinute(I)V

    goto :goto_112

    .line 420
    :cond_bb
    :goto_bb
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->endHour:I
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$500(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)I

    move-result v0

    if-nez v0, :cond_102

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->endMin:I
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$600(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)I

    move-result v0

    if-nez v0, :cond_102

    .line 421
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->startTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->dismiss()V

    .line 422
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->tvRemindStartTime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->startHour:I
    invoke-static {p1, p2}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$302(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;I)I

    .line 424
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->startMin:I
    invoke-static {p1, p3}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$402(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;I)I

    .line 425
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$1100(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)Lcom/keephealth/android/model/bean/LongSit;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->startHour:I
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/model/bean/LongSit;->setEffectiveStartHour(I)V

    .line 426
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$1100(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)Lcom/keephealth/android/model/bean/LongSit;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->startMin:I
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$400(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/model/bean/LongSit;->setEffectiveStartMinute(I)V

    goto :goto_112

    .line 428
    :cond_102
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f1004f2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    # invokes: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->showToast(Ljava/lang/String;)V
    invoke-static {p1, p2}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$1500(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;Ljava/lang/String;)V

    :goto_112
    return-void
.end method
