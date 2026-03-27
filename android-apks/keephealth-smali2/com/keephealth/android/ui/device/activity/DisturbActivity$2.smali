.class Lcom/keephealth/android/ui/device/activity/DisturbActivity$2;
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

    .line 126
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 2

    .line 129
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->startTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->dismiss()V

    return-void
.end method

.method public onSure(Ljava/lang/String;II)V
    .registers 7

    .line 134
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/DisturbActivity;->startHour:I
    invoke-static {v0, p2}, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->access$102(Lcom/keephealth/android/ui/device/activity/DisturbActivity;I)I

    .line 135
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/DisturbActivity;->startMin:I
    invoke-static {p2, p3}, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->access$202(Lcom/keephealth/android/ui/device/activity/DisturbActivity;I)I

    .line 136
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    iget-object p2, p2, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->startTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    invoke-virtual {p2}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->dismiss()V

    .line 137
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DisturbActivity;->endHour:I
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->access$300(Lcom/keephealth/android/ui/device/activity/DisturbActivity;)I

    move-result p2

    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DisturbActivity;->startHour:I
    invoke-static {p3}, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->access$100(Lcom/keephealth/android/ui/device/activity/DisturbActivity;)I

    move-result p3

    if-ne p2, p3, :cond_2e

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DisturbActivity;->endMin:I
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->access$400(Lcom/keephealth/android/ui/device/activity/DisturbActivity;)I

    move-result p2

    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DisturbActivity;->startMin:I
    invoke-static {p3}, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->access$200(Lcom/keephealth/android/ui/device/activity/DisturbActivity;)I

    move-result p3

    if-ne p2, p3, :cond_2e

    return-void

    .line 140
    :cond_2e
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    iget-object p2, p2, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->tvRemindStartTime:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DisturbActivity;->endHour:I
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->access$300(Lcom/keephealth/android/ui/device/activity/DisturbActivity;)I

    move-result p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DisturbActivity;->startHour:I
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->access$100(Lcom/keephealth/android/ui/device/activity/DisturbActivity;)I

    move-result p2

    const-string p3, ":"

    const-string v0, "%02d"

    if-lt p1, p2, :cond_a5

    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DisturbActivity;->endHour:I
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->access$300(Lcom/keephealth/android/ui/device/activity/DisturbActivity;)I

    move-result p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DisturbActivity;->startHour:I
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->access$100(Lcom/keephealth/android/ui/device/activity/DisturbActivity;)I

    move-result p2

    if-ne p1, p2, :cond_64

    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DisturbActivity;->endMin:I
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->access$400(Lcom/keephealth/android/ui/device/activity/DisturbActivity;)I

    move-result p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DisturbActivity;->startMin:I
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->access$200(Lcom/keephealth/android/ui/device/activity/DisturbActivity;)I

    move-result p2

    if-ge p1, p2, :cond_64

    goto :goto_a5

    .line 144
    :cond_64
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->tvRemindEndTime:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DisturbActivity;->endHour:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->access$300(Lcom/keephealth/android/ui/device/activity/DisturbActivity;)I

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

    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DisturbActivity;->endMin:I
    invoke-static {p3}, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->access$400(Lcom/keephealth/android/ui/device/activity/DisturbActivity;)I

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

    goto :goto_fc

    .line 142
    :cond_a5
    :goto_a5
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->tvRemindEndTime:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10044e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DisturbActivity;->endHour:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->access$300(Lcom/keephealth/android/ui/device/activity/DisturbActivity;)I

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

    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DisturbActivity;->endMin:I
    invoke-static {p3}, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->access$400(Lcom/keephealth/android/ui/device/activity/DisturbActivity;)I

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

    :goto_fc
    return-void
.end method
