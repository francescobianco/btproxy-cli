.class public Lcom/keephealth/android/ui/device/activity/NotificationActivity;
.super Landroid/app/Activity;
.source "NotificationActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 11
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NotificationActivity;->isTaskRoot()Z

    .line 23
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/NotificationActivity;->finish()V

    return-void
.end method
