.class Lfreemarker/core/BuiltInsForLoopVariables$has_nextBI;
.super Lfreemarker/core/BuiltInsForLoopVariables$BooleanBuiltInForLoopVariable;
.source "BuiltInsForLoopVariables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForLoopVariables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "has_nextBI"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 64
    invoke-direct {p0}, Lfreemarker/core/BuiltInsForLoopVariables$BooleanBuiltInForLoopVariable;-><init>()V

    return-void
.end method


# virtual methods
.method protected calculateBooleanResult(Lfreemarker/core/IteratorBlock$IterationContext;Lfreemarker/core/Environment;)Z
    .registers 3

    .line 68
    invoke-virtual {p1}, Lfreemarker/core/IteratorBlock$IterationContext;->hasNext()Z

    move-result p1

    return p1
.end method
