.class Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$7;
.super Ljava/lang/Object;
.source "GameRestrictionsActivity.java"

# interfaces
.implements Lcom/keephealth/android/views/dialog/TimePickerDialog$OnClickCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->initDatePicker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;)V
    .registers 2

    .line 240
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 2

    .line 243
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->endTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->dismiss()V

    return-void
.end method

.method public onSure(Ljava/lang/String;II)V
    .registers 6

    .line 248
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->endTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->dismiss()V

    .line 249
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->endHour:I
    invoke-static {v0, p2}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->access$502(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;I)I

    .line 250
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->endMin:I
    invoke-static {v0, p3}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->access$602(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;I)I

    .line 251
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->gameBean:Lcom/keephealth/android/ui/device/bean/NotGameBean;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->access$000(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;)Lcom/keephealth/android/ui/device/bean/NotGameBean;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->endHour:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->access$500(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/bean/NotGameBean;->setEndTimeHour(I)V

    .line 252
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->gameBean:Lcom/keephealth/android/ui/device/bean/NotGameBean;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->access$000(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;)Lcom/keephealth/android/ui/device/bean/NotGameBean;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->endMin:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->access$600(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/bean/NotGameBean;->setEndTimeMin(I)V

    .line 253
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->startHour:I
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->access$300(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;)I

    move-result v0

    if-lt p2, v0, :cond_52

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->startHour:I
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->access$300(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_48

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->startMin:I
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->access$400(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;)I

    move-result p2

    if-gt p3, p2, :cond_48

    goto :goto_52

    .line 256
    :cond_48
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    iget-object p2, p2, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->binding:Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;

    iget-object p2, p2, Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;->tvEndTime:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_79

    .line 254
    :cond_52
    :goto_52
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    iget-object p2, p2, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->binding:Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;

    iget-object p2, p2, Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;->tvEndTime:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->getResources()Landroid/content/res/Resources;

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

    :goto_79
    return-void
.end method
