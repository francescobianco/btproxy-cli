.class public final Lfreemarker/template/SimpleScalar;
.super Ljava/lang/Object;
.source "SimpleScalar.java"

# interfaces
.implements Lfreemarker/template/TemplateScalarModel;
.implements Ljava/io/Serializable;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lfreemarker/template/SimpleScalar;->value:Ljava/lang/String;

    return-void
.end method

.method public static newInstanceOrNull(Ljava/lang/String;)Lfreemarker/template/SimpleScalar;
    .registers 2

    if-eqz p0, :cond_8

    .line 67
    new-instance v0, Lfreemarker/template/SimpleScalar;

    invoke-direct {v0, p0}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0
.end method


# virtual methods
.method public getAsString()Ljava/lang/String;
    .registers 2

    .line 52
    iget-object v0, p0, Lfreemarker/template/SimpleScalar;->value:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    :cond_6
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 58
    iget-object v0, p0, Lfreemarker/template/SimpleScalar;->value:Ljava/lang/String;

    return-object v0
.end method
