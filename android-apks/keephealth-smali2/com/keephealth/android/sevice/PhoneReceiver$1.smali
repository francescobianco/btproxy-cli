.class Lcom/keephealth/android/sevice/PhoneReceiver$1;
.super Ljava/lang/Object;
.source "PhoneReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/sevice/PhoneReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/sevice/PhoneReceiver;


# direct methods
.method constructor <init>(Lcom/keephealth/android/sevice/PhoneReceiver;)V
    .registers 2

    .line 159
    iput-object p1, p0, Lcom/keephealth/android/sevice/PhoneReceiver$1;->this$0:Lcom/keephealth/android/sevice/PhoneReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 162
    iget-object v0, p0, Lcom/keephealth/android/sevice/PhoneReceiver$1;->this$0:Lcom/keephealth/android/sevice/PhoneReceiver;

    # getter for: Lcom/keephealth/android/sevice/PhoneReceiver;->isRemind:Z
    invoke-static {v0}, Lcom/keephealth/android/sevice/PhoneReceiver;->access$000(Lcom/keephealth/android/sevice/PhoneReceiver;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 163
    iget-object v0, p0, Lcom/keephealth/android/sevice/PhoneReceiver$1;->this$0:Lcom/keephealth/android/sevice/PhoneReceiver;

    # getter for: Lcom/keephealth/android/sevice/PhoneReceiver;->contactName:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/sevice/PhoneReceiver;->access$100(Lcom/keephealth/android/sevice/PhoneReceiver;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/keephealth/android/sevice/PhoneReceiver$1;->this$0:Lcom/keephealth/android/sevice/PhoneReceiver;

    # getter for: Lcom/keephealth/android/sevice/PhoneReceiver;->contactName:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/sevice/PhoneReceiver;->access$100(Lcom/keephealth/android/sevice/PhoneReceiver;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 164
    :cond_1c
    iget-object v0, p0, Lcom/keephealth/android/sevice/PhoneReceiver$1;->this$0:Lcom/keephealth/android/sevice/PhoneReceiver;

    iget-object v1, v0, Lcom/keephealth/android/sevice/PhoneReceiver;->mIncomingNumber:Ljava/lang/String;

    # setter for: Lcom/keephealth/android/sevice/PhoneReceiver;->contactName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/keephealth/android/sevice/PhoneReceiver;->access$102(Lcom/keephealth/android/sevice/PhoneReceiver;Ljava/lang/String;)Ljava/lang/String;

    .line 166
    :cond_23
    const-string v0, "FF45fd4"

    const-string v1, "IntelligentNotificationService.getDefault().addMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-static {}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->getDefault()Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/sevice/PhoneReceiver$1;->this$0:Lcom/keephealth/android/sevice/PhoneReceiver;

    # getter for: Lcom/keephealth/android/sevice/PhoneReceiver;->contactName:Ljava/lang/String;
    invoke-static {v1}, Lcom/keephealth/android/sevice/PhoneReceiver;->access$100(Lcom/keephealth/android/sevice/PhoneReceiver;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/sevice/PhoneReceiver$1;->this$0:Lcom/keephealth/android/sevice/PhoneReceiver;

    iget-object v2, v2, Lcom/keephealth/android/sevice/PhoneReceiver;->mIncomingNumber:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->addMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 168
    sput-boolean v3, Lcom/keephealth/android/app/AppApplication;->isAssReceivePhone:Z

    .line 169
    sput-boolean v3, Lcom/keephealth/android/app/AppApplication;->isPhoneReceivePhone:Z

    .line 170
    iget-object v0, p0, Lcom/keephealth/android/sevice/PhoneReceiver$1;->this$0:Lcom/keephealth/android/sevice/PhoneReceiver;

    # getter for: Lcom/keephealth/android/sevice/PhoneReceiver;->aa:I
    invoke-static {v0}, Lcom/keephealth/android/sevice/PhoneReceiver;->access$200(Lcom/keephealth/android/sevice/PhoneReceiver;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4e

    .line 171
    iget-object v0, p0, Lcom/keephealth/android/sevice/PhoneReceiver$1;->this$0:Lcom/keephealth/android/sevice/PhoneReceiver;

    # setter for: Lcom/keephealth/android/sevice/PhoneReceiver;->aa:I
    invoke-static {v0, v3}, Lcom/keephealth/android/sevice/PhoneReceiver;->access$202(Lcom/keephealth/android/sevice/PhoneReceiver;I)I

    :cond_4e
    return-void
.end method
