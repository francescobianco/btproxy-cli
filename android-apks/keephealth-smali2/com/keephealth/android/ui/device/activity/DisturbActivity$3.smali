.class Lcom/keephealth/android/ui/device/activity/DisturbActivity$3;
.super Ljava/lang/Object;
.source "DisturbActivity.java"

# interfaces
.implements Lcom/keephealth/android/views/dialog/TimePickerDialog$OnClickCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/DisturbActivity;->initDatePicker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/DisturbActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/DisturbActivity;)V
    .registers 2

    .line 149
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 2

    .line 152
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->endTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->dismiss()V

    return-void
.end method

.method public onSure(Ljava/lang/String;II)V
    .registers 6

    .line 157
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/DisturbActivity;->endHour:I
    invoke-static {v0, p2}, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->access$302(Lcom/keephealth/android/ui/device/activity/DisturbActivity;I)I

    .line 158
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/DisturbActivity;->endMin:I
    invoke-static {p2, p3}, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->access$402(Lcom/keephealth/android/ui/device/activity/DisturbActivity;I)I

    .line 159
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    iget-object p2, p2, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->endTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    invoke-virtual {p2}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->dismiss()V

    .line 160
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DisturbActivity;->endHour:I
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->access$300(Lcom/keephealth/android/ui/device/activity/DisturbActivity;)I

    move-result p2

    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DisturbActivity;->startHour:I
    invoke-static {p3}, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->access$100(Lcom/keephealth/android/ui/device/activity/DisturbActivity;)I

    move-result p3

    if-ne p2, p3, :cond_2e

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DisturbActivity;->endMin:I
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->access$400(Lcom/keephealth/android/ui/device/activity/DisturbActivity;)I

    move-result p2

    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DisturbActivity;->startMin:I
    invoke-static {p3}, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->access$200(Lcom/keephealth/android/ui/device/activity/DisturbActivity;)I

    move-result p3

    if-ne p2, p3, :cond_2e

    return-void

    .line 163
    :cond_2e
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DisturbActivity;->endHour:I
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->access$300(Lcom/keephealth/android/ui/device/activity/DisturbActivity;)I

    move-result p2

    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DisturbActivity;->startHour:I
    invoke-static {p3}, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->access$100(Lcom/keephealth/android/ui/device/activity/DisturbActivity;)I

    move-result p3

    if-lt p2, p3, :cond_61

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DisturbActivity;->endHour:I
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->access$300(Lcom/keephealth/android/ui/device/activity/DisturbActivity;)I

    move-result p2

    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DisturbActivity;->startHour:I
    invoke-static {p3}, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->access$100(Lcom/keephealth/android/ui/device/activity/DisturbActivity;)I

    move-result p3

    if-ne p2, p3, :cond_59

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DisturbActivity;->endMin:I
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->access$400(Lcom/keephealth/android/ui/device/activity/DisturbActivity;)I

    move-result p2

    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DisturbActivity;->startMin:I
    invoke-static {p3}, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->access$200(Lcom/keephealth/android/ui/device/activity/DisturbActivity;)I

    move-result p3

    if-ge p2, p3, :cond_59

    goto :goto_61

    .line 166
    :cond_59
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    iget-object p2, p2, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->tvRemindEndTime:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8c

    .line 164
    :cond_61
    :goto_61
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    iget-object p2, p2, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->tvRemindEndTime:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10044e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_8c
    return-void
.end method
