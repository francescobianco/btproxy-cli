.class Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$17;
.super Ljava/lang/Object;
.source "ScreenRegulationActivity.java"

# interfaces
.implements Lcom/keephealth/android/views/dialog/TimePickerDialog$OnClickCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->initDatePicker()V
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

    .line 605
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$17;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 2

    .line 608
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$17;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->dismiss()V

    return-void
.end method

.method public onSure(Ljava/lang/String;II)V
    .registers 6

    .line 613
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$17;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->dismiss()V

    .line 614
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$17;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endHour:I
    invoke-static {v0, p2}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$2102(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;I)I

    .line 615
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$17;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endMin:I
    invoke-static {v0, p3}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$2202(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;I)I

    .line 616
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$17;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->upHander:Lcom/keephealth/android/model/bean/UpHander;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$1600(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)Lcom/keephealth/android/model/bean/UpHander;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$17;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endHour:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$2100(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/UpHander;->setEffectiveEndHour(I)V

    .line 617
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$17;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->upHander:Lcom/keephealth/android/model/bean/UpHander;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$1600(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)Lcom/keephealth/android/model/bean/UpHander;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$17;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endMin:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$2200(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/UpHander;->setEffectiveEndMinute(I)V

    .line 618
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$17;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startHour:I
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$1900(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I

    move-result v0

    if-lt p2, v0, :cond_52

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$17;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startHour:I
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$1900(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I

    move-result v0

    if-ne p2, v0, :cond_48

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$17;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startMin:I
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$2000(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I

    move-result p2

    if-gt p3, p2, :cond_48

    goto :goto_52

    .line 621
    :cond_48
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$17;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    iget-object p2, p2, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object p2, p2, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->tvBrightScreenEndTime:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_79

    .line 619
    :cond_52
    :goto_52
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$17;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    iget-object p2, p2, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object p2, p2, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->tvBrightScreenEndTime:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$17;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->getResources()Landroid/content/res/Resources;

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

    .line 623
    :goto_79
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$17;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # invokes: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->setScreen()V
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$1700(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)V

    return-void
.end method
