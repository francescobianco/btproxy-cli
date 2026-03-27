.class public Lcom/keephealth/android/ui/device/activity/DfuService;
.super Lno/nordicsemi/android/dfu/DfuBaseService;
.source "DfuService.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Lno/nordicsemi/android/dfu/DfuBaseService;-><init>()V

    return-void
.end method


# virtual methods
.method protected getNotificationTarget()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 46
    const-class v0, Lcom/keephealth/android/ui/device/activity/NotificationActivity;

    return-object v0
.end method

.method protected isDebug()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
