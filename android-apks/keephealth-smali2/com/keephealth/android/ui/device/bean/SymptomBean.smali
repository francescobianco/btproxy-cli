.class public Lcom/keephealth/android/ui/device/bean/SymptomBean;
.super Ljava/lang/Object;
.source "SymptomBean.java"


# instance fields
.field private isSelect:Z

.field private sympId:I

.field private sympName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .registers 4

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/keephealth/android/ui/device/bean/SymptomBean;->sympId:I

    .line 13
    iput-object p2, p0, Lcom/keephealth/android/ui/device/bean/SymptomBean;->sympName:Ljava/lang/String;

    .line 14
    iput-boolean p3, p0, Lcom/keephealth/android/ui/device/bean/SymptomBean;->isSelect:Z

    return-void
.end method


# virtual methods
.method public getSympId()I
    .registers 2

    .line 18
    iget v0, p0, Lcom/keephealth/android/ui/device/bean/SymptomBean;->sympId:I

    return v0
.end method

.method public getSympName()Ljava/lang/String;
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/keephealth/android/ui/device/bean/SymptomBean;->sympName:Ljava/lang/String;

    return-object v0
.end method

.method public isSelect()Z
    .registers 2

    .line 34
    iget-boolean v0, p0, Lcom/keephealth/android/ui/device/bean/SymptomBean;->isSelect:Z

    return v0
.end method

.method public setSelect(Z)V
    .registers 2

    .line 38
    iput-boolean p1, p0, Lcom/keephealth/android/ui/device/bean/SymptomBean;->isSelect:Z

    return-void
.end method

.method public setSympId(I)V
    .registers 2

    .line 22
    iput p1, p0, Lcom/keephealth/android/ui/device/bean/SymptomBean;->sympId:I

    return-void
.end method

.method public setSympName(Ljava/lang/String;)V
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/keephealth/android/ui/device/bean/SymptomBean;->sympName:Ljava/lang/String;

    return-void
.end method
