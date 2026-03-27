.class Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4$1;
.super Ljava/lang/Object;
.source "WomenHealthActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;->onMultiChoose(Landroid/view/View;Lcom/keephealth/android/views/calendarview/bean/DateBean;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;)V
    .registers 2

    .line 446
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 449
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->lin_mood_makelove:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 450
    const-string v0, "6t6tyf"

    const-string v2, "visible  3"

    invoke-static {v0, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemToggleLayout;->setVisibility(I)V

    .line 452
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->itSymptom:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 453
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->ilMakeLove:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemLableValue;->setVisibility(I)V

    return-void
.end method
