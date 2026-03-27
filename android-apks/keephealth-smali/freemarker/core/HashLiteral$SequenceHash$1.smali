.class Lfreemarker/core/HashLiteral$SequenceHash$1;
.super Ljava/lang/Object;
.source "HashLiteral.java"

# interfaces
.implements Lfreemarker/template/TemplateHashModelEx2$KeyValuePairIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/core/HashLiteral$SequenceHash;->keyValuePairIterator()Lfreemarker/template/TemplateHashModelEx2$KeyValuePairIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final keyIterator:Lfreemarker/template/TemplateModelIterator;

.field final synthetic this$1:Lfreemarker/core/HashLiteral$SequenceHash;

.field private final valueIterator:Lfreemarker/template/TemplateModelIterator;


# direct methods
.method constructor <init>(Lfreemarker/core/HashLiteral$SequenceHash;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 183
    iput-object p1, p0, Lfreemarker/core/HashLiteral$SequenceHash$1;->this$1:Lfreemarker/core/HashLiteral$SequenceHash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    invoke-virtual {p1}, Lfreemarker/core/HashLiteral$SequenceHash;->keys()Lfreemarker/template/TemplateCollectionModel;

    move-result-object v0

    invoke-interface {v0}, Lfreemarker/template/TemplateCollectionModel;->iterator()Lfreemarker/template/TemplateModelIterator;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/HashLiteral$SequenceHash$1;->keyIterator:Lfreemarker/template/TemplateModelIterator;

    .line 185
    invoke-virtual {p1}, Lfreemarker/core/HashLiteral$SequenceHash;->values()Lfreemarker/template/TemplateCollectionModel;

    move-result-object p1

    invoke-interface {p1}, Lfreemarker/template/TemplateCollectionModel;->iterator()Lfreemarker/template/TemplateModelIterator;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/HashLiteral$SequenceHash$1;->valueIterator:Lfreemarker/template/TemplateModelIterator;

    return-void
.end method

.method static synthetic access$300(Lfreemarker/core/HashLiteral$SequenceHash$1;)Lfreemarker/template/TemplateModelIterator;
    .registers 1

    .line 183
    iget-object p0, p0, Lfreemarker/core/HashLiteral$SequenceHash$1;->keyIterator:Lfreemarker/template/TemplateModelIterator;

    return-object p0
.end method

.method static synthetic access$400(Lfreemarker/core/HashLiteral$SequenceHash$1;)Lfreemarker/template/TemplateModelIterator;
    .registers 1

    .line 183
    iget-object p0, p0, Lfreemarker/core/HashLiteral$SequenceHash$1;->valueIterator:Lfreemarker/template/TemplateModelIterator;

    return-object p0
.end method


# virtual methods
.method public hasNext()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lfreemarker/core/HashLiteral$SequenceHash$1;->keyIterator:Lfreemarker/template/TemplateModelIterator;

    invoke-interface {v0}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Lfreemarker/template/TemplateHashModelEx2$KeyValuePair;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 192
    new-instance v0, Lfreemarker/core/HashLiteral$SequenceHash$1$1;

    invoke-direct {v0, p0}, Lfreemarker/core/HashLiteral$SequenceHash$1$1;-><init>(Lfreemarker/core/HashLiteral$SequenceHash$1;)V

    return-object v0
.end method
