.class public Lcom/keephealth/android/greendao/bean/UserInfoBean$Medals;
.super Ljava/lang/Object;
.source "UserInfoBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/greendao/bean/UserInfoBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Medals"
.end annotation


# instance fields
.field private createTime:Ljava/lang/String;

.field private medalNum:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
