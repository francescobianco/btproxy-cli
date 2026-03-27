.class Lfreemarker/core/BuiltInsForSequences$minBI;
.super Lfreemarker/core/BuiltInsForSequences$MinOrMaxBI;
.source "BuiltInsForSequences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForSequences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "minBI"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x3

    .line 1007
    invoke-direct {p0, v0}, Lfreemarker/core/BuiltInsForSequences$MinOrMaxBI;-><init>(I)V

    return-void
.end method
