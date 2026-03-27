.class Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$12;
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

    .line 515
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 2

    .line 518
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->endTimeInvalidPickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->dismiss()V

    return-void
.end method

.method public onSure(Ljava/lang/String;II)V
    .registers 5

    .line 523
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->startHourInvalid:I
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$700(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)I

    move-result v0

    if-lt p2, v0, :cond_50

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->startHourInvalid:I
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$700(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)I

    move-result v0

    if-ne p2, v0, :cond_19

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->startMinInvalid:I
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$800(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)I

    move-result v0

    if-gt p3, v0, :cond_19

    goto :goto_50

    .line 535
    :cond_19
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->endTimeInvalidPickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->dismiss()V

    .line 536
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->tvRemindEndTimeInvalid:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 537
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->endHourInvalid:I
    invoke-static {p1, p2}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$902(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;I)I

    .line 538
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->endMinInvalid:I
    invoke-static {p1, p3}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$1002(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;I)I

    .line 539
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$1100(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)Lcom/keephealth/android/model/bean/LongSit;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->endHourInvalid:I
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$900(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/model/bean/LongSit;->setInvalidEndHour(I)V

    .line 540
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$1100(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)Lcom/keephealth/android/model/bean/LongSit;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->endMinInvalid:I
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/model/bean/LongSit;->setInvalidEndMinute(I)V

    goto :goto_9b

    :cond_50
    :goto_50
    if-nez p2, :cond_8b

    if-nez p3, :cond_8b

    .line 525
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->endTimeInvalidPickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->dismiss()V

    .line 526
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->tvRemindEndTimeInvalid:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 527
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->endHourInvalid:I
    invoke-static {p1, p2}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$902(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;I)I

    .line 528
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->endMinInvalid:I
    invoke-static {p1, p3}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$1002(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;I)I

    .line 529
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$1100(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)Lcom/keephealth/android/model/bean/LongSit;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->endHourInvalid:I
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$900(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/model/bean/LongSit;->setInvalidEndHour(I)V

    .line 530
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$1100(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)Lcom/keephealth/android/model/bean/LongSit;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->endMinInvalid:I
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/model/bean/LongSit;->setInvalidEndMinute(I)V

    goto :goto_9b

    .line 532
    :cond_8b
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f1004f2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    # invokes: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->showToast(Ljava/lang/String;)V
    invoke-static {p1, p2}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$2100(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;Ljava/lang/String;)V

    :goto_9b
    return-void
.end method
