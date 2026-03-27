.class Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$21;
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

    .line 705
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$21;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 2

    .line 708
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$21;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endTimePickerDialog3:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->dismiss()V

    return-void
.end method

.method public onSure(Ljava/lang/String;II)V
    .registers 6

    .line 713
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$21;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endHour3:I
    invoke-static {v0, p2}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$302(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;I)I

    .line 714
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$21;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endMin3:I
    invoke-static {p2, p3}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$402(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;I)I

    .line 715
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$21;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    iget-object p2, p2, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endTimePickerDialog3:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    invoke-virtual {p2}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->dismiss()V

    .line 716
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$21;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endHour3:I
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$300(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I

    move-result p2

    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$21;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startHour3:I
    invoke-static {p3}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$100(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I

    move-result p3

    if-ne p2, p3, :cond_2e

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$21;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endMin3:I
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$400(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I

    move-result p2

    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$21;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startMin3:I
    invoke-static {p3}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$200(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I

    move-result p3

    if-ne p2, p3, :cond_2e

    return-void

    .line 719
    :cond_2e
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$21;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endHour3:I
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$300(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I

    move-result p2

    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$21;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startHour3:I
    invoke-static {p3}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$100(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I

    move-result p3

    if-lt p2, p3, :cond_63

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$21;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endHour3:I
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$300(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I

    move-result p2

    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$21;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startHour3:I
    invoke-static {p3}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$100(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I

    move-result p3

    if-ne p2, p3, :cond_59

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$21;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endMin3:I
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$400(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I

    move-result p2

    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$21;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startMin3:I
    invoke-static {p3}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$200(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I

    move-result p3

    if-ge p2, p3, :cond_59

    goto :goto_63

    .line 722
    :cond_59
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$21;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    iget-object p2, p2, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object p2, p2, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->tvNightShiftEndTime:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_90

    .line 720
    :cond_63
    :goto_63
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$21;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    iget-object p2, p2, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object p2, p2, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->tvNightShiftEndTime:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$21;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->getResources()Landroid/content/res/Resources;

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

    .line 724
    :goto_90
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$21;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # invokes: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->setNight()V
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$2500(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)V

    return-void
.end method
