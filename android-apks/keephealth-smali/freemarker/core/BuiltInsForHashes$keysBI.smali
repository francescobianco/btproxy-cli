.class Lfreemarker/core/BuiltInsForHashes$keysBI;
.super Lfreemarker/core/BuiltInForHashEx;
.source "BuiltInsForHashes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForHashes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "keysBI"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Lfreemarker/core/BuiltInForHashEx;-><init>()V

    return-void
.end method


# virtual methods
.method calculateResult(Lfreemarker/template/TemplateHashModelEx;Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;,
            Lfreemarker/core/InvalidReferenceException;
        }
    .end annotation

    .line 38
    invoke-interface {p1}, Lfreemarker/template/TemplateHashModelEx;->keys()Lfreemarker/template/TemplateCollectionModel;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 40
    instance-of p1, v0, Lfreemarker/template/TemplateSequenceModel;

    if-eqz p1, :cond_b

    goto :goto_11

    :cond_b
    new-instance p1, Lfreemarker/core/CollectionAndSequence;

    invoke-direct {p1, v0}, Lfreemarker/core/CollectionAndSequence;-><init>(Lfreemarker/template/TemplateCollectionModel;)V

    move-object v0, p1

    :goto_11
    return-object v0

    .line 39
    :cond_12
    const-string v0, "keys"

    invoke-virtual {p0, v0, p1, p2}, Lfreemarker/core/BuiltInsForHashes$keysBI;->newNullPropertyException(Ljava/lang/String;Lfreemarker/template/TemplateModel;Lfreemarker/core/Environment;)Lfreemarker/core/InvalidReferenceException;

    move-result-object p1

    throw p1
.end method
