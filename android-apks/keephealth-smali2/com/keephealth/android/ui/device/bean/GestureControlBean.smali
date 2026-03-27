.class public Lcom/keephealth/android/ui/device/bean/GestureControlBean;
.super Ljava/lang/Object;
.source "GestureControlBean.java"


# instance fields
.field private isShow:Z

.field private itemExplain:Ljava/lang/String;

.field private itemTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/keephealth/android/ui/device/bean/GestureControlBean;->itemTitle:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/keephealth/android/ui/device/bean/GestureControlBean;->itemExplain:Ljava/lang/String;

    .line 19
    iput-boolean p3, p0, Lcom/keephealth/android/ui/device/bean/GestureControlBean;->isShow:Z

    return-void
.end method


# virtual methods
.method public getItemExplain()Ljava/lang/String;
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/keephealth/android/ui/device/bean/GestureControlBean;->itemExplain:Ljava/lang/String;

    return-object v0
.end method

.method public getItemTitle()Ljava/lang/String;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/keephealth/android/ui/device/bean/GestureControlBean;->itemTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isShow()Z
    .registers 2

    .line 39
    iget-boolean v0, p0, Lcom/keephealth/android/ui/device/bean/GestureControlBean;->isShow:Z

    return v0
.end method

.method public setItemExplain(Ljava/lang/String;)V
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/keephealth/android/ui/device/bean/GestureControlBean;->itemExplain:Ljava/lang/String;

    return-void
.end method

.method public setItemTitle(Ljava/lang/String;)V
    .registers 2

    .line 27
    iput-object p1, p0, Lcom/keephealth/android/ui/device/bean/GestureControlBean;->itemTitle:Ljava/lang/String;

    return-void
.end method

.method public setShow(Z)V
    .registers 2

    .line 43
    iput-boolean p1, p0, Lcom/keephealth/android/ui/device/bean/GestureControlBean;->isShow:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GestureControlBean{itemTitle=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/ui/device/bean/GestureControlBean;->itemTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', itemExplain=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/bean/GestureControlBean;->itemExplain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', isShow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/keephealth/android/ui/device/bean/GestureControlBean;->isShow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
