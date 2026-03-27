.class Lfreemarker/core/BuiltInsForLoopVariables$item_parity_capBI;
.super Lfreemarker/core/BuiltInForLoopVariable;
.source "BuiltInsForLoopVariables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForLoopVariables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "item_parity_capBI"
.end annotation


# static fields
.field private static final EVEN:Lfreemarker/template/SimpleScalar;

.field private static final ODD:Lfreemarker/template/SimpleScalar;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 123
    new-instance v0, Lfreemarker/template/SimpleScalar;

    const-string v1, "Odd"

    invoke-direct {v0, v1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    sput-object v0, Lfreemarker/core/BuiltInsForLoopVariables$item_parity_capBI;->ODD:Lfreemarker/template/SimpleScalar;

    .line 124
    new-instance v0, Lfreemarker/template/SimpleScalar;

    const-string v1, "Even"

    invoke-direct {v0, v1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    sput-object v0, Lfreemarker/core/BuiltInsForLoopVariables$item_parity_capBI;->EVEN:Lfreemarker/template/SimpleScalar;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 121
    invoke-direct {p0}, Lfreemarker/core/BuiltInForLoopVariable;-><init>()V

    return-void
.end method


# virtual methods
.method calculateResult(Lfreemarker/core/IteratorBlock$IterationContext;Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 128
    invoke-virtual {p1}, Lfreemarker/core/IteratorBlock$IterationContext;->getIndex()I

    move-result p1

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_b

    sget-object p1, Lfreemarker/core/BuiltInsForLoopVariables$item_parity_capBI;->ODD:Lfreemarker/template/SimpleScalar;

    goto :goto_d

    :cond_b
    sget-object p1, Lfreemarker/core/BuiltInsForLoopVariables$item_parity_capBI;->EVEN:Lfreemarker/template/SimpleScalar;

    :goto_d
    return-object p1
.end method
