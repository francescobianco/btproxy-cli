.class Lcom/keephealth/android/ui/device/activity/MoreSetActivity$3;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "MoreSetActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/MoreSetActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/MoreSetActivity;)V
    .registers 2

    .line 360
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/MoreSetActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 3

    .line 363
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/MoreSetActivity;

    const-class v0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;

    invoke-static {p1, v0}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method
