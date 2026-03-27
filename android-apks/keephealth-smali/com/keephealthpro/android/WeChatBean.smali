.class public Lcom/keephealthpro/android/WeChatBean;
.super Ljava/lang/Object;
.source "WeChatBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private code:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/keephealthpro/android/WeChatBean;->code:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/keephealthpro/android/WeChatBean;->code:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .registers 2

    .line 14
    iput-object p1, p0, Lcom/keephealthpro/android/WeChatBean;->code:Ljava/lang/String;

    return-void
.end method
