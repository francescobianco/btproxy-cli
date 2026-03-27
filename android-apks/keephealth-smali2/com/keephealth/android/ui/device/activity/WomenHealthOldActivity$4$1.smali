.class Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4$1;
.super Ljava/lang/Object;
.source "WomenHealthOldActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;->onMultiChoose(Landroid/view/View;Lcom/keephealth/android/views/calendarview/bean/DateBean;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;)V
    .registers 2

    .line 429
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 432
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->lin_mood_makelove:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 433
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->llMenstrual:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 434
    const-string v0, "6t6tyf"

    const-string v2, "visible  3"

    invoke-static {v0, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemToggleLayout;->setVisibility(I)V

    .line 436
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->itSymptom:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 437
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->ilMakeLove:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemLableValue;->setVisibility(I)V

    return-void
.end method
