.class Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$18;
.super Ljava/lang/Object;
.source "ScreenRegulationActivity.java"

# interfaces
.implements Lcom/keephealth/android/views/dialog/TimePickerDialog$OnClickCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->initDatePicker2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)V
    .registers 2

    .line 631
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$18;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 2

    .line 634
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$18;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startTimePickerDialog2:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->dismiss()V

    return-void
.end method

.method public onSure(Ljava/lang/String;II)V
    .registers 7

    .line 639
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$18;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startHour2:I
    invoke-static {v0, p2}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$802(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;I)I

    .line 640
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$18;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startMin2:I
    invoke-static {p2, p3}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$902(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;I)I

    .line 641
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$18;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    iget-object p2, p2, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startTimePickerDialog2:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    invoke-virtual {p2}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->dismiss()V

    .line 642
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$18;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endHour2:I
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I

    move-result p2

    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$18;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startHour2:I
    invoke-static {p3}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$800(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I

    move-result p3

    if-ne p2, p3, :cond_2e

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$18;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endMin2:I
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$1100(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I

    move-result p2

    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$18;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startMin2:I
    invoke-static {p3}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$900(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I

    move-result p3

    if-ne p2, p3, :cond_2e

    return-void

    .line 645
    :cond_2e
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$18;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    iget-object p2, p2, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object p2, p2, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->tvDisturbModeStartTime:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 646
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$18;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endHour2:I
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I

    move-result p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$18;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startHour2:I
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$800(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I

    move-result p2

    const-string p3, ":"

    const-string v0, "%02d"

    if-lt p1, p2, :cond_a9

    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$18;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endHour2:I
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I

    move-result p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$18;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startHour2:I
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$800(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I

    move-result p2

    if-ne p1, p2, :cond_66

    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$18;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endMin2:I
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$1100(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I

    move-result p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$18;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startMin2:I
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$900(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I

    move-result p2

    if-ge p1, p2, :cond_66

    goto :goto_a9

    .line 649
    :cond_66
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$18;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->tvDisturbModeEndTime:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$18;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endHour2:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$18;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endMin2:I
    invoke-static {p3}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$1100(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_102

    .line 647
    :cond_a9
    :goto_a9
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$18;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->tvDisturbModeEndTime:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$18;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10044e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$18;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endHour2:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$18;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endMin2:I
    invoke-static {p3}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$1100(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 651
    :goto_102
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$18;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # invokes: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->setDisturbMode()V
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$2400(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)V

    return-void
.end method
