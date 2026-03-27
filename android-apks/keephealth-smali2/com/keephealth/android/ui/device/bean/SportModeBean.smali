.class public Lcom/keephealth/android/ui/device/bean/SportModeBean;
.super Ljava/lang/Object;
.source "SportModeBean.java"


# instance fields
.field private sportName:Ljava/lang/String;

.field private sportNo:I

.field private sportRes:I

.field private sportStaus:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSportName()Ljava/lang/String;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/keephealth/android/ui/device/bean/SportModeBean;->sportName:Ljava/lang/String;

    return-object v0
.end method

.method public getSportNo()I
    .registers 2

    .line 34
    iget v0, p0, Lcom/keephealth/android/ui/device/bean/SportModeBean;->sportNo:I

    return v0
.end method

.method public getSportRes()I
    .registers 2

    .line 18
    iget v0, p0, Lcom/keephealth/android/ui/device/bean/SportModeBean;->sportRes:I

    return v0
.end method

.method public isSportStaus()Z
    .registers 2

    .line 26
    iget-boolean v0, p0, Lcom/keephealth/android/ui/device/bean/SportModeBean;->sportStaus:Z

    return v0
.end method

.method public setSportName(Ljava/lang/String;)V
    .registers 2

    .line 14
    iput-object p1, p0, Lcom/keephealth/android/ui/device/bean/SportModeBean;->sportName:Ljava/lang/String;

    return-void
.end method

.method public setSportNo(I)V
    .registers 2

    .line 38
    iput p1, p0, Lcom/keephealth/android/ui/device/bean/SportModeBean;->sportNo:I

    return-void
.end method

.method public setSportRes(I)V
    .registers 2

    .line 22
    iput p1, p0, Lcom/keephealth/android/ui/device/bean/SportModeBean;->sportRes:I

    return-void
.end method

.method public setSportStaus(Z)V
    .registers 2

    .line 30
    iput-boolean p1, p0, Lcom/keephealth/android/ui/device/bean/SportModeBean;->sportStaus:Z

    return-void
.end method
