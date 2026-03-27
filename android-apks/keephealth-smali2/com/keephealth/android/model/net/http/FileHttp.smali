.class public Lcom/keephealth/android/model/net/http/FileHttp;
.super Ljava/lang/Object;
.source "FileHttp.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static uploadFileImage(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/RequestBody;",
            "Lcom/keephealth/android/model/net/ApiCallback<",
            "Lcom/keephealth/android/model/BaseBean<",
            "Lcom/keephealth/android/model/bean/UploadFileBean;",
            ">;>;)V"
        }
    .end annotation

    .line 20
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getFileApi()Lcom/keephealth/android/model/net/api/FileApi;

    move-result-object v0

    .line 21
    invoke-interface {v0, p0}, Lcom/keephealth/android/model/net/api/FileApi;->uploadFileUpload(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p0

    .line 20
    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 22
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static uploadImage(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/RequestBody;",
            "Lcom/keephealth/android/model/net/ApiCallback<",
            "Lcom/keephealth/android/model/BaseBean<",
            "Lcom/keephealth/android/model/bean/ImageResult;",
            ">;>;)V"
        }
    .end annotation

    .line 15
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getFileApi()Lcom/keephealth/android/model/net/api/FileApi;

    move-result-object v0

    .line 16
    invoke-interface {v0, p0}, Lcom/keephealth/android/model/net/api/FileApi;->uploadFile(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p0

    .line 15
    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 17
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
