.class public Lcom/keephealth/android/receiver/NetworkConnectChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkConnectChangedReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkChangedReceiver"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 25
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    if-ne p1, p2, :cond_19

    .line 27
    invoke-static {}, Lcom/keephealth/android/util/NetUtils;->isConnected()Z

    move-result p1

    if-nez p1, :cond_14

    const/16 p1, 0x3ec

    .line 29
    invoke-static {p1}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    goto :goto_19

    :cond_14
    const/16 p1, 0x3ed

    .line 31
    invoke-static {p1}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    :cond_19
    :goto_19
    return-void
.end method
