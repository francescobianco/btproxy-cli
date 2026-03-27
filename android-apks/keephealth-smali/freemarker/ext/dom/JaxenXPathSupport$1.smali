.class final Lfreemarker/ext/dom/JaxenXPathSupport$1;
.super Lfreemarker/core/CustomAttribute;
.source "JaxenXPathSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/dom/JaxenXPathSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .registers 2

    .line 69
    invoke-direct {p0, p1}, Lfreemarker/core/CustomAttribute;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected create()Ljava/lang/Object;
    .registers 2

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method
