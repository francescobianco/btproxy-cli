.class public Lcom/keephealth/android/model/bean/FrequentContactBean;
.super Ljava/lang/Object;
.source "FrequentContactBean.java"


# instance fields
.field private name:Ljava/lang/String;

.field private number:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .line 8
    iget-object v0, p0, Lcom/keephealth/android/model/bean/FrequentContactBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/keephealth/android/model/bean/FrequentContactBean;->number:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 12
    iput-object p1, p0, Lcom/keephealth/android/model/bean/FrequentContactBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/keephealth/android/model/bean/FrequentContactBean;->number:Ljava/lang/String;

    return-void
.end method
