.class Lcom/keephealth/android/ui/device/activity/WristScreenActivity$3;
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

    .line 158
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WristScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 2

    .line 161
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WristScreenActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->startTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->dismiss()V

    return-void
.end method

.method public onSure(Ljava/lang/String;II)V
    .registers 6

    .line 166
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WristScreenActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->startTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->dismiss()V

    .line 167
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WristScreenActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->startHour:I
    invoke-static {v0, p2}, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->access$202(Lcom/keephealth/android/ui/device/activity/WristScreenActivity;I)I

    .line 168
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WristScreenActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->startMin:I
    invoke-static {v0, p3}, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->access$302(Lcom/keephealth/android/ui/device/activity/WristScreenActivity;I)I

    .line 169
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WristScreenActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->upHander:Lcom/keephealth/android/model/bean/UpHander;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->access$400(Lcom/keephealth/android/ui/device/activity/WristScreenActivity;)Lcom/keephealth/android/model/bean/UpHander;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WristScreenActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->startHour:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->access$200(Lcom/keephealth/android/ui/device/activity/WristScreenActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/UpHander;->setEffectiveStartHour(I)V

    .line 170
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WristScreenActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->upHander:Lcom/keephealth/android/model/bean/UpHander;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->access$400(Lcom/keephealth/android/ui/device/activity/WristScreenActivity;)Lcom/keephealth/android/model/bean/UpHander;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WristScreenActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->startMin:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WristScreenActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/UpHander;->setEffectiveStartMinute(I)V

    .line 171
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WristScreenActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->tvScreenStartTime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WristScreenActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->endHour:I
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->access$500(Lcom/keephealth/android/ui/device/activity/WristScreenActivity;)I

    move-result p1

    if-gt p2, p1, :cond_4e

    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WristScreenActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->endHour:I
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->access$500(Lcom/keephealth/android/ui/device/activity/WristScreenActivity;)I

    move-result p1

    if-ne p2, p1, :cond_7b

    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WristScreenActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->endMin:I
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->access$600(Lcom/keephealth/android/ui/device/activity/WristScreenActivity;)I

    move-result p1

    if-lt p3, p1, :cond_7b

    .line 173
    :cond_4e
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WristScreenActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->tvScreenEndTime:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WristScreenActivity;

    invoke-virtual {p3}, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f10044e

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WristScreenActivity;

    iget-object p3, p3, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->endTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    invoke-virtual {p3}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->getTime()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7b
    return-void
.end method
