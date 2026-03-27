.class public Lfreemarker/template/SimpleList;
.super Lfreemarker/template/SimpleSequence;
.source "SimpleList.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Lfreemarker/template/SimpleSequence;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 2

    .line 39
    invoke-direct {p0, p1}, Lfreemarker/template/SimpleSequence;-><init>(Ljava/util/Collection;)V

    return-void
.end method
