.class Lfreemarker/core/HashLiteral$SequenceHash$1$1;
.super Ljava/lang/Object;
.source "HashLiteral.java"

# interfaces
.implements Lfreemarker/template/TemplateHashModelEx2$KeyValuePair;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/core/HashLiteral$SequenceHash$1;->next()Lfreemarker/template/TemplateHashModelEx2$KeyValuePair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final key:Lfreemarker/template/TemplateModel;

.field final synthetic this$2:Lfreemarker/core/HashLiteral$SequenceHash$1;

.field private final value:Lfreemarker/template/TemplateModel;


# direct methods
.method constructor <init>(Lfreemarker/core/HashLiteral$SequenceHash$1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 192
    iput-object p1, p0, Lfreemarker/core/HashLiteral$SequenceHash$1$1;->this$2:Lfreemarker/core/HashLiteral$SequenceHash$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    # getter for: Lfreemarker/core/HashLiteral$SequenceHash$1;->keyIterator:Lfreemarker/template/TemplateModelIterator;
    invoke-static {p1}, Lfreemarker/core/HashLiteral$SequenceHash$1;->access$300(Lfreemarker/core/HashLiteral$SequenceHash$1;)Lfreemarker/template/TemplateModelIterator;

    move-result-object v0

    invoke-interface {v0}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/HashLiteral$SequenceHash$1$1;->key:Lfreemarker/template/TemplateModel;

    .line 194
    # getter for: Lfreemarker/core/HashLiteral$SequenceHash$1;->valueIterator:Lfreemarker/template/TemplateModelIterator;
    invoke-static {p1}, Lfreemarker/core/HashLiteral$SequenceHash$1;->access$400(Lfreemarker/core/HashLiteral$SequenceHash$1;)Lfreemarker/template/TemplateModelIterator;

    move-result-object p1

    invoke-interface {p1}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/HashLiteral$SequenceHash$1$1;->value:Lfreemarker/template/TemplateModel;

    return-void
.end method


# virtual methods
.method public getKey()Lfreemarker/template/TemplateModel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lfreemarker/core/HashLiteral$SequenceHash$1$1;->key:Lfreemarker/template/TemplateModel;

    return-object v0
.end method

.method public getValue()Lfreemarker/template/TemplateModel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lfreemarker/core/HashLiteral$SequenceHash$1$1;->value:Lfreemarker/template/TemplateModel;

    return-object v0
.end method
