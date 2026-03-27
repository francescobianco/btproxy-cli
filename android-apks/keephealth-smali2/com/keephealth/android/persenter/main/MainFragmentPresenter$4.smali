.class Lcom/keephealth/android/persenter/main/MainFragmentPresenter$4;
.super Lcom/keephealth/android/util/ble/BleCallbackWrapper;
.source "MainFragmentPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->synchWeather()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;


# direct methods
.method constructor <init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V
    .registers 2

    .line 260
    iput-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$4;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/BleCallbackWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public setSuccess()V
    .registers 3

    .line 263
    const-string v0, "ffr3ddft"

    const-string v1, "\u8bbe\u7f6e\u5929\u6c14\u6210\u529f..."

    invoke-static {v0, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-static {}, Lcom/keephealth/android/util/LocationUtil;->stopLocation()V

    return-void
.end method
