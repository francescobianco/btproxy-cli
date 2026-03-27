.class Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo$5;
.super Ljava/lang/Object;
.source "IntelligentNotificationAddServiceTwo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;


# direct methods
.method constructor <init>(Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;)V
    .registers 2

    .line 1369
    iput-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo$5;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1372
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo$5;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;

    # getter for: Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->access$700(Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1373
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo$5;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;

    # getter for: Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->access$700(Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x156

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_13
    return-void
.end method
