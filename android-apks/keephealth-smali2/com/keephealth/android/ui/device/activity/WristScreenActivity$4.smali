.class Lcom/keephealth/android/ui/device/activity/WristScreenActivity$4;
.super Ljava/lang/Object;
.source "WristScreenActivity.java"

# interfaces
.implements Lcom/keephealth/android/views/dialog/TimePickerDialog$OnClickCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->initDatePicker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/WristScreenActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/WristScreenActivity;)V
    .registers 2

    .line 179
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WristScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 2

    .line 182
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WristScreenActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->endTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->dismiss()V

    return-void
.end method

.method public onSure(Ljava/lang/String;II)V
    .registers 6

    .line 187
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WristScreenActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->endTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->dismiss()V

    .line 188
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WristScreenActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->endHour:I
    invoke-static {v0, p2}, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->access$502(Lcom/keephealth/android/ui/device/activity/WristScreenActivity;I)I

    .line 189
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WristScreenActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->endMin:I
    invoke-static {v0, p3}, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->access$602(Lcom/keephealth/android/ui/device/activity/WristScreenActivity;I)I

    .line 190
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WristScreenActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->upHander:Lcom/keephealth/android/model/bean/UpHander;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->access$400(Lcom/keephealth/android/ui/device/activity/WristScreenActivity;)Lcom/keephealth/android/model/bean/UpHander;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WristScreenActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->endHour:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->access$500(Lcom/keephealth/android/ui/device/activity/WristScreenActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/UpHander;->setEffectiveEndHour(I)V

    .line 191
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WristScreenActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->upHander:Lcom/keephealth/android/model/bean/UpHander;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->access$400(Lcom/keephealth/android/ui/device/activity/WristScreenActivity;)Lcom/keephealth/android/model/bean/UpHander;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WristScreenActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->endMin:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->access$600(Lcom/keephealth/android/ui/device/activity/WristScreenActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/UpHander;->setEffectiveEndMinute(I)V

    .line 192
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WristScreenActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->startHour:I
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->access$200(Lcom/keephealth/android/ui/device/activity/WristScreenActivity;)I

    move-result v0

    if-lt p2, v0, :cond_50

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WristScreenActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->startHour:I
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->access$200(Lcom/keephealth/android/ui/device/activity/WristScreenActivity;)I

    move-result v0

    if-ne p2, v0, :cond_48

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WristScreenActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->startMin:I
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WristScreenActivity;)I

    move-result p2

    if-gt p3, p2, :cond_48

    goto :goto_50

    .line 195
    :cond_48
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WristScreenActivity;

    iget-object p2, p2, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->tvScreenEndTime:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_75

    .line 193
    :cond_50
    :goto_50
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WristScreenActivity;

    iget-object p2, p2, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->tvScreenEndTime:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WristScreenActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10044e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_75
    return-void
.end method
