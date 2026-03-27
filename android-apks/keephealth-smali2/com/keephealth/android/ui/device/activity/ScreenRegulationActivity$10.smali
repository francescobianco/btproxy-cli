.class Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$10;
.super Ljava/lang/Object;
.source "ScreenRegulationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->initListener()V
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

    .line 465
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 468
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->itDisturbMode:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {p1}, Lcom/keephealth/android/views/ItemToggleLayout;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_26

    .line 469
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endTimePickerDialog2:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endHour2:I
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endMin2:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$1100(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->setTime(II)V

    .line 470
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endTimePickerDialog2:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    invoke-virtual {p1}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->show()V

    :cond_26
    return-void
.end method
