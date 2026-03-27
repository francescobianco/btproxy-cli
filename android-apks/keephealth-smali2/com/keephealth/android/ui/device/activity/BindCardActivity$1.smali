.class Lcom/keephealth/android/ui/device/activity/BindCardActivity$1;
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

    .line 148
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/BindCardActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 2

    .line 151
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/BindCardActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->finish()V

    return-void
.end method
