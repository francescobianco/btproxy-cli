.class final Lfreemarker/ext/beans/APIModel;
.super Lfreemarker/ext/beans/BeanModel;
.source "APIModel.java"


# direct methods
.method constructor <init>(Ljava/lang/Object;Lfreemarker/ext/beans/BeansWrapper;)V
    .registers 4

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, v0}, Lfreemarker/ext/beans/BeanModel;-><init>(Ljava/lang/Object;Lfreemarker/ext/beans/BeansWrapper;Z)V

    return-void
.end method


# virtual methods
.method protected isMethodsShadowItems()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
