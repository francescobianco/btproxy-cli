.class Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$6;
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

    .line 217
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 2

    .line 220
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->startTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->dismiss()V

    return-void
.end method

.method public onSure(Ljava/lang/String;II)V
    .registers 6

    .line 225
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->startTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->dismiss()V

    .line 226
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->startHour:I
    invoke-static {v0, p2}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->access$302(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;I)I

    .line 227
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->startMin:I
    invoke-static {v0, p3}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->access$402(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;I)I

    .line 228
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->gameBean:Lcom/keephealth/android/ui/device/bean/NotGameBean;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->access$000(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;)Lcom/keephealth/android/ui/device/bean/NotGameBean;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->startHour:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->access$300(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/bean/NotGameBean;->setStartTimeHour(I)V

    .line 229
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->gameBean:Lcom/keephealth/android/ui/device/bean/NotGameBean;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->access$000(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;)Lcom/keephealth/android/ui/device/bean/NotGameBean;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->startMin:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->access$400(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/bean/NotGameBean;->setStartTimeMin(I)V

    .line 230
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->binding:Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;->tvStartTime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->endHour:I
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->access$500(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;)I

    move-result p1

    if-gt p2, p1, :cond_63

    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->endHour:I
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->access$500(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;)I

    move-result p1

    if-ne p2, p1, :cond_51

    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->endMin:I
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->access$600(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;)I

    move-result p1

    if-lt p3, p1, :cond_51

    goto :goto_63

    .line 234
    :cond_51
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->binding:Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;->tvEndTime:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    iget-object p2, p2, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->endTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    invoke-virtual {p2}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->getTime()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_92

    .line 232
    :cond_63
    :goto_63
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->binding:Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;->tvEndTime:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    invoke-virtual {p3}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f10044e

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    iget-object p3, p3, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->endTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    invoke-virtual {p3}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->getTime()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_92
    return-void
.end method
