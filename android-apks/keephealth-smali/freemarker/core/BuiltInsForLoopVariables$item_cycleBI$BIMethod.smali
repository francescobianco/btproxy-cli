.class Lfreemarker/core/BuiltInsForLoopVariables$item_cycleBI$BIMethod;
.super Ljava/lang/Object;
.source "BuiltInsForLoopVariables.java"

# interfaces
.implements Lfreemarker/template/TemplateMethodModelEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForLoopVariables$item_cycleBI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BIMethod"
.end annotation


# instance fields
.field private final iterCtx:Lfreemarker/core/IteratorBlock$IterationContext;

.field final synthetic this$0:Lfreemarker/core/BuiltInsForLoopVariables$item_cycleBI;


# direct methods
.method private constructor <init>(Lfreemarker/core/BuiltInsForLoopVariables$item_cycleBI;Lfreemarker/core/IteratorBlock$IterationContext;)V
    .registers 3

    .line 139
    iput-object p1, p0, Lfreemarker/core/BuiltInsForLoopVariables$item_cycleBI$BIMethod;->this$0:Lfreemarker/core/BuiltInsForLoopVariables$item_cycleBI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p2, p0, Lfreemarker/core/BuiltInsForLoopVariables$item_cycleBI$BIMethod;->iterCtx:Lfreemarker/core/IteratorBlock$IterationContext;

    return-void
.end method

.method synthetic constructor <init>(Lfreemarker/core/BuiltInsForLoopVariables$item_cycleBI;Lfreemarker/core/IteratorBlock$IterationContext;Lfreemarker/core/BuiltInsForLoopVariables$1;)V
    .registers 4

    .line 135
    invoke-direct {p0, p1, p2}, Lfreemarker/core/BuiltInsForLoopVariables$item_cycleBI$BIMethod;-><init>(Lfreemarker/core/BuiltInsForLoopVariables$item_cycleBI;Lfreemarker/core/IteratorBlock$IterationContext;)V

    return-void
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lfreemarker/core/BuiltInsForLoopVariables$item_cycleBI$BIMethod;->this$0:Lfreemarker/core/BuiltInsForLoopVariables$item_cycleBI;

    const/4 v1, 0x1

    const v2, 0x7fffffff

    invoke-virtual {v0, p1, v1, v2}, Lfreemarker/core/BuiltInsForLoopVariables$item_cycleBI;->checkMethodArgCount(Ljava/util/List;II)V

    .line 145
    iget-object v0, p0, Lfreemarker/core/BuiltInsForLoopVariables$item_cycleBI$BIMethod;->iterCtx:Lfreemarker/core/IteratorBlock$IterationContext;

    invoke-virtual {v0}, Lfreemarker/core/IteratorBlock$IterationContext;->getIndex()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
