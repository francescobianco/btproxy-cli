.class Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$3;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "RemindSportSetNewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)V
    .registers 2

    .line 320
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 4

    .line 323
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->startTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->startHour:I
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->startMin:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$400(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->setTime(II)V

    .line 324
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->startTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    invoke-virtual {p1}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->show()V

    return-void
.end method
