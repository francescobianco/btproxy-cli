.class Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$9;
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

    .line 505
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 5

    .line 508
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 509
    const-string v0, "from"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 510
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    const-class v1, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;

    const/16 v2, 0x12c

    invoke-static {v0, v1, p1, v2}, Lcom/keephealth/android/util/IntentUtil;->goToActivityForResult(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;I)V

    return-void
.end method
