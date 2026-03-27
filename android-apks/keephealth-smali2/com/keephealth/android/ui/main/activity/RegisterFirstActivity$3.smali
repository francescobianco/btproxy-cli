.class Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$3;
.super Ljava/lang/Object;
.source "RegisterFirstActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;)V
    .registers 2

    .line 201
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 204
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;

    invoke-static {}, Lcom/keephealth/android/util/GPSUtils;->getInstance()Lcom/keephealth/android/util/GPSUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/util/GPSUtils;->getProvince()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->countryInfo:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->access$102(Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 205
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->countryInfo:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->access$100(Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "phone"

    const/16 v2, 0x6f

    if-nez v0, :cond_7f

    .line 206
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->countryInfo:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->access$100(Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->countryInfo:Ljava/lang/String;
    invoke-static {v4}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->access$100(Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "---"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->countryCode:Ljava/lang/String;

    .line 207
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->countryCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a3

    .line 208
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->countryCode:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 209
    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;

    invoke-static {v3, v0}, Lcom/keephealth/android/util/AreaCodeUtils;->getCountryNameByCountryCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_62

    .line 212
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;

    # setter for: Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->courtrys:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->access$002(Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 213
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_a3

    .line 215
    :cond_62
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 216
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 217
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;

    invoke-static {v1, v0}, Lcom/keephealth/android/util/AreaCodeUtils;->getCountryNameByCountryCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->courtrys:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->access$002(Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 218
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_a3

    .line 223
    :cond_7f
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 224
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 225
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->countryCode:Ljava/lang/String;

    .line 226
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;

    invoke-static {v1, v0}, Lcom/keephealth/android/util/AreaCodeUtils;->getCountryNameByCountryCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->courtrys:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->access$002(Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 227
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_a3
    :goto_a3
    return-void
.end method
