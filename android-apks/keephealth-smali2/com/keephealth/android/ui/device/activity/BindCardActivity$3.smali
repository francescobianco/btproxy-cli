.class Lcom/keephealth/android/ui/device/activity/BindCardActivity$3;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "BindCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/BindCardActivity;->createObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/BindCardActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/BindCardActivity;)V
    .registers 2

    .line 161
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/BindCardActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 4

    .line 164
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/BindCardActivity;

    const-class v1, Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 165
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/BindCardActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
