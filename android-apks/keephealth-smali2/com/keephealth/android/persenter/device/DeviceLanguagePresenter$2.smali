.class Lcom/keephealth/android/persenter/device/DeviceLanguagePresenter$2;
.super Lcom/keephealth/android/model/net/ApiCallback;
.source "DeviceLanguagePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/persenter/device/DeviceLanguagePresenter;->saveUser(Lcom/keephealth/android/model/bean/UserBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/model/net/ApiCallback<",
        "Lcom/keephealth/android/model/BaseBean<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/persenter/device/DeviceLanguagePresenter;


# direct methods
.method constructor <init>(Lcom/keephealth/android/persenter/device/DeviceLanguagePresenter;)V
    .registers 2

    .line 51
    iput-object p1, p0, Lcom/keephealth/android/persenter/device/DeviceLanguagePresenter$2;->this$0:Lcom/keephealth/android/persenter/device/DeviceLanguagePresenter;

    invoke-direct {p0}, Lcom/keephealth/android/model/net/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onFinish()V
    .registers 1

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 2

    return-void
.end method

.method public onSuccess(Lcom/keephealth/android/model/BaseBean;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/model/BaseBean<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
