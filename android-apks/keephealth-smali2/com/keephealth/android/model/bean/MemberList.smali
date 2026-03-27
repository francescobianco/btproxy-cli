.class public Lcom/keephealth/android/model/bean/MemberList;
.super Ljava/lang/Object;
.source "MemberList.java"


# instance fields
.field private guardians:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/UserBean;",
            ">;"
        }
    .end annotation
.end field

.field private wards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/UserBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGuardians()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/UserBean;",
            ">;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/keephealth/android/model/bean/MemberList;->guardians:Ljava/util/List;

    return-object v0
.end method

.method public getWards()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/UserBean;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/keephealth/android/model/bean/MemberList;->wards:Ljava/util/List;

    return-object v0
.end method

.method public setGuardians(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/UserBean;",
            ">;)V"
        }
    .end annotation

    .line 14
    iput-object p1, p0, Lcom/keephealth/android/model/bean/MemberList;->guardians:Ljava/util/List;

    return-void
.end method

.method public setWards(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/UserBean;",
            ">;)V"
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lcom/keephealth/android/model/bean/MemberList;->wards:Ljava/util/List;

    return-void
.end method
