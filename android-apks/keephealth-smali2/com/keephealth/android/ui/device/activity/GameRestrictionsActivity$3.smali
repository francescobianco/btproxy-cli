.class Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$3;
.super Ljava/lang/Object;
.source "GameRestrictionsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->initView()V
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

    .line 117
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 120
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->binding:Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;->ctSwitch:Lcom/keephealth/android/views/CustomToggleButton;

    invoke-virtual {p1}, Lcom/keephealth/android/views/CustomToggleButton;->getSwitchState()Z

    move-result p1

    if-eqz p1, :cond_26

    .line 121
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->endTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->endHour:I
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->access$500(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->endMin:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->access$600(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->setTime(II)V

    .line 122
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->endTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    invoke-virtual {p1}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->show()V

    :cond_26
    return-void
.end method
