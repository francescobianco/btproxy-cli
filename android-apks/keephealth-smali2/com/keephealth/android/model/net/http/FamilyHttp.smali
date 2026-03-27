.class public Lcom/keephealth/android/model/net/http/FamilyHttp;
.super Ljava/lang/Object;
.source "FamilyHttp.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMember(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/RequestBody;",
            "Lcom/keephealth/android/model/net/ApiCallback<",
            "Lcom/keephealth/android/model/BaseBean<",
            "Lcom/keephealth/android/model/bean/UserBean;",
            ">;>;)V"
        }
    .end annotation

    .line 74
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getFamilyApi()Lcom/keephealth/android/model/net/api/FamilyApi;

    move-result-object v0

    .line 75
    invoke-interface {v0, p0}, Lcom/keephealth/android/model/net/api/FamilyApi;->addMember(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p0

    .line 74
    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 76
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static getFamilyDetail(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/RequestBody;",
            "Lcom/keephealth/android/model/net/ApiCallback<",
            "Lcom/keephealth/android/model/BaseBean<",
            "Lcom/keephealth/android/model/bean/FamilyDetail;",
            ">;>;)V"
        }
    .end annotation

    .line 53
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getFamilyApi()Lcom/keephealth/android/model/net/api/FamilyApi;

    move-result-object v0

    .line 54
    invoke-interface {v0, p0}, Lcom/keephealth/android/model/net/api/FamilyApi;->getFamilyDetail(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p0

    .line 53
    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 55
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static getFamilyList(Lcom/keephealth/android/model/net/ApiCallback;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/model/net/ApiCallback<",
            "Lcom/keephealth/android/model/BaseBean<",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/FamilyBean;",
            ">;>;>;)V"
        }
    .end annotation

    .line 46
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getFamilyApi()Lcom/keephealth/android/model/net/api/FamilyApi;

    move-result-object v0

    .line 47
    invoke-interface {v0}, Lcom/keephealth/android/model/net/api/FamilyApi;->getFamilyList()Lio/reactivex/Observable;

    move-result-object v0

    .line 46
    invoke-static {v0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object v0

    .line 48
    invoke-virtual {v0, p0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static getInvitatList(Lcom/keephealth/android/model/net/ApiCallback;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/model/net/ApiCallback<",
            "Lcom/keephealth/android/model/BaseBean<",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/InvitedBean;",
            ">;>;>;)V"
        }
    .end annotation

    .line 32
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getFamilyApi()Lcom/keephealth/android/model/net/api/FamilyApi;

    move-result-object v0

    .line 33
    invoke-interface {v0}, Lcom/keephealth/android/model/net/api/FamilyApi;->getInvitatList()Lio/reactivex/Observable;

    move-result-object v0

    .line 32
    invoke-static {v0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object v0

    .line 34
    invoke-virtual {v0, p0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static getInviteGuardian(Lcom/keephealth/android/model/net/ApiCallback;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/model/net/ApiCallback<",
            "Lcom/keephealth/android/model/BaseBean<",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/InvitedBean;",
            ">;>;>;)V"
        }
    .end annotation

    .line 100
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getFamilyApi()Lcom/keephealth/android/model/net/api/FamilyApi;

    move-result-object v0

    .line 101
    invoke-interface {v0}, Lcom/keephealth/android/model/net/api/FamilyApi;->getInviteGuardian()Lio/reactivex/Observable;

    move-result-object v0

    .line 100
    invoke-static {v0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object v0

    .line 102
    invoke-virtual {v0, p0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static getMemberList(Lcom/keephealth/android/model/net/ApiCallback;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/model/net/ApiCallback<",
            "Lcom/keephealth/android/model/BaseBean<",
            "Lcom/keephealth/android/model/bean/MemberList;",
            ">;>;)V"
        }
    .end annotation

    .line 81
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getFamilyApi()Lcom/keephealth/android/model/net/api/FamilyApi;

    move-result-object v0

    .line 82
    invoke-interface {v0}, Lcom/keephealth/android/model/net/api/FamilyApi;->getMemberList()Lio/reactivex/Observable;

    move-result-object v0

    .line 81
    invoke-static {v0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object v0

    .line 83
    invoke-virtual {v0, p0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static inviteFamily(ILcom/keephealth/android/model/net/ApiCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/keephealth/android/model/net/ApiCallback<",
            "Lcom/keephealth/android/model/BaseBean<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 25
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getFamilyApi()Lcom/keephealth/android/model/net/api/FamilyApi;

    move-result-object v0

    .line 26
    invoke-interface {v0, p0}, Lcom/keephealth/android/model/net/api/FamilyApi;->inviteFamily(I)Lio/reactivex/Observable;

    move-result-object p0

    .line 25
    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 27
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static inviteGuardian(ILcom/keephealth/android/model/net/ApiCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/keephealth/android/model/net/ApiCallback<",
            "Lcom/keephealth/android/model/BaseBean<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 93
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getFamilyApi()Lcom/keephealth/android/model/net/api/FamilyApi;

    move-result-object v0

    .line 94
    invoke-interface {v0, p0}, Lcom/keephealth/android/model/net/api/FamilyApi;->inviteGuardian(I)Lio/reactivex/Observable;

    move-result-object p0

    .line 93
    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 95
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static leaveFamily(Lcom/keephealth/android/model/net/ApiCallback;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/model/net/ApiCallback<",
            "Lcom/keephealth/android/model/BaseBean<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 121
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getFamilyApi()Lcom/keephealth/android/model/net/api/FamilyApi;

    move-result-object v0

    .line 122
    invoke-interface {v0}, Lcom/keephealth/android/model/net/api/FamilyApi;->leaveFamily()Lio/reactivex/Observable;

    move-result-object v0

    .line 121
    invoke-static {v0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object v0

    .line 123
    invoke-virtual {v0, p0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static removeFamily(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/RequestBody;",
            "Lcom/keephealth/android/model/net/ApiCallback<",
            "Lcom/keephealth/android/model/BaseBean<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 67
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getFamilyApi()Lcom/keephealth/android/model/net/api/FamilyApi;

    move-result-object v0

    .line 68
    invoke-interface {v0, p0}, Lcom/keephealth/android/model/net/api/FamilyApi;->removeFamily(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p0

    .line 67
    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 69
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static removeGuardian(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/RequestBody;",
            "Lcom/keephealth/android/model/net/ApiCallback<",
            "Lcom/keephealth/android/model/BaseBean<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 114
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getFamilyApi()Lcom/keephealth/android/model/net/api/FamilyApi;

    move-result-object v0

    .line 115
    invoke-interface {v0, p0}, Lcom/keephealth/android/model/net/api/FamilyApi;->removeGuardian(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p0

    .line 114
    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 116
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static removeMember(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/RequestBody;",
            "Lcom/keephealth/android/model/net/ApiCallback<",
            "Lcom/keephealth/android/model/BaseBean<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 87
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getFamilyApi()Lcom/keephealth/android/model/net/api/FamilyApi;

    move-result-object v0

    .line 88
    invoke-interface {v0, p0}, Lcom/keephealth/android/model/net/api/FamilyApi;->removeMember(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p0

    .line 87
    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 89
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static replyGuardians(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/RequestBody;",
            "Lcom/keephealth/android/model/net/ApiCallback<",
            "Lcom/keephealth/android/model/BaseBean<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 107
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getFamilyApi()Lcom/keephealth/android/model/net/api/FamilyApi;

    move-result-object v0

    .line 108
    invoke-interface {v0, p0}, Lcom/keephealth/android/model/net/api/FamilyApi;->replyGuardians(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p0

    .line 107
    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 109
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static replyInvitat(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/RequestBody;",
            "Lcom/keephealth/android/model/net/ApiCallback<",
            "Lcom/keephealth/android/model/BaseBean<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 39
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getFamilyApi()Lcom/keephealth/android/model/net/api/FamilyApi;

    move-result-object v0

    .line 40
    invoke-interface {v0, p0}, Lcom/keephealth/android/model/net/api/FamilyApi;->replyInvitat(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p0

    .line 39
    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 41
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static updateFamilyPerssion(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/RequestBody;",
            "Lcom/keephealth/android/model/net/ApiCallback<",
            "Lcom/keephealth/android/model/BaseBean<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 60
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getFamilyApi()Lcom/keephealth/android/model/net/api/FamilyApi;

    move-result-object v0

    .line 61
    invoke-interface {v0, p0}, Lcom/keephealth/android/model/net/api/FamilyApi;->updateFamilyPerssion(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p0

    .line 60
    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 62
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
