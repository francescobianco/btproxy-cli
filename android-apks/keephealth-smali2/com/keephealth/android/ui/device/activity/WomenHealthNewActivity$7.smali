.class Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$7;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "WomenHealthNewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)V
    .registers 2

    .line 475
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 3

    .line 478
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # invokes: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->moodOnClick(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$1400(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;Landroid/view/View;)V

    return-void
.end method
