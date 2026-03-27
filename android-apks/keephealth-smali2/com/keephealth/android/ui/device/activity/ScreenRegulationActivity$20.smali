.class Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$20;
.super Ljava/lang/Object;
.source "ScreenRegulationActivity.java"

# interfaces
.implements Lcom/keephealth/android/views/dialog/TimePickerDialog$OnClickCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->initDatePicker3()V
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

    .line 681
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$20;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 2

    .line 684
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$20;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startTimePickerDialog3:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->dismiss()V

    return-void
.end method

.method public onSure(Ljava/lang/String;II)V
    .registers 7

    .line 689
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$20;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startHour3:I
    invoke-static {v0, p2}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$102(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;I)I

    .line 690
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$20;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startMin3:I
    invoke-static {p2, p3}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$202(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;I)I

    .line 691
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$20;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    iget-object p2, p2, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startTimePickerDialog3:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    invoke-virtual {p2}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->dismiss()V

    .line 692
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$20;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endHour3:I
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$300(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I

    move-result p2

    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$20;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startHour3:I
    invoke-static {p3}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$100(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I

    move-result p3

    if-ne p2, p3, :cond_2e

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$20;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endMin3:I
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$400(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I

    move-result p2

    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$20;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startMin3:I
    invoke-static {p3}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$200(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I

    move-result p3

    if-ne p2, p3, :cond_2e

    return-void

    .line 695
    :cond_2e
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$20;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    iget-object p2, p2, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object p2, p2, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->tvNightShiftStartTime:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 696
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$20;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endHour3:I
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$300(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I

    move-result p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$20;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startHour3:I
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$100(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I

    move-result p2

    const-string p3, ":"

    const-string v0, "%02d"

    if-lt p1, p2, :cond_a9

    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$20;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endHour3:I
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$300(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I

    move-result p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$20;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startHour3:I
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$100(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I

    move-result p2

    if-ne p1, p2, :cond_66

    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$20;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endMin3:I
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$400(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I

    move-result p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$20;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startMin3:I
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$200(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I

    move-result p2

    if-ge p1, p2, :cond_66

    goto :goto_a9

    .line 699
    :cond_66
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$20;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->tvNightShiftEndTime:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$20;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endHour3:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$300(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I

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

    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$20;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endMin3:I
    invoke-static {p3}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$400(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I

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

    .line 697
    :cond_a9
    :goto_a9
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$20;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->tvNightShiftEndTime:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$20;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

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

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$20;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endHour3:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$300(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I

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

    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$20;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endMin3:I
    invoke-static {p3}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$400(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I

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

    .line 701
    :goto_102
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$20;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # invokes: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->setNight()V
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$2500(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)V

    return-void
.end method
