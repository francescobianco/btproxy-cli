.class public final Lfreemarker/template/SimpleNumber;
.super Ljava/lang/Object;
.source "SimpleNumber.java"

# interfaces
.implements Lfreemarker/template/TemplateNumberModel;
.implements Ljava/io/Serializable;


# instance fields
.field private final value:Ljava/lang/Number;


# direct methods
.method public constructor <init>(B)V
    .registers 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/template/SimpleNumber;->value:Ljava/lang/Number;

    return-void
.end method

.method public constructor <init>(D)V
    .registers 3

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/template/SimpleNumber;->value:Ljava/lang/Number;

    return-void
.end method

.method public constructor <init>(F)V
    .registers 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/template/SimpleNumber;->value:Ljava/lang/Number;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/template/SimpleNumber;->value:Ljava/lang/Number;

    return-void
.end method

.method public constructor <init>(J)V
    .registers 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/template/SimpleNumber;->value:Ljava/lang/Number;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lfreemarker/template/SimpleNumber;->value:Ljava/lang/Number;

    return-void
.end method

.method public constructor <init>(S)V
    .registers 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/template/SimpleNumber;->value:Ljava/lang/Number;

    return-void
.end method


# virtual methods
.method public getAsNumber()Ljava/lang/Number;
    .registers 2

    .line 67
    iget-object v0, p0, Lfreemarker/template/SimpleNumber;->value:Ljava/lang/Number;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 72
    iget-object v0, p0, Lfreemarker/template/SimpleNumber;->value:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
