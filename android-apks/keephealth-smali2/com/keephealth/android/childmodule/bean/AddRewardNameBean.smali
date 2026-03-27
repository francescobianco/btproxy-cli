.class public Lcom/keephealth/android/childmodule/bean/AddRewardNameBean;
.super Ljava/lang/Object;
.source "AddRewardNameBean.java"


# instance fields
.field private name:Ljava/lang/String;


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

    .line 7
    iget-object v0, p0, Lcom/keephealth/android/childmodule/bean/AddRewardNameBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 11
    iput-object p1, p0, Lcom/keephealth/android/childmodule/bean/AddRewardNameBean;->name:Ljava/lang/String;

    return-void
.end method
