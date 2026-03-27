.class Lfreemarker/core/HashLiteral$SequenceHash;
.super Ljava/lang/Object;
.source "HashLiteral.java"

# interfaces
.implements Lfreemarker/template/TemplateHashModelEx2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/HashLiteral;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SequenceHash"
.end annotation


# instance fields
.field private keyCollection:Lfreemarker/template/TemplateCollectionModel;

.field private map:Ljava/util/HashMap;

.field final synthetic this$0:Lfreemarker/core/HashLiteral;

.field private valueCollection:Lfreemarker/template/TemplateCollectionModel;


# direct methods
.method constructor <init>(Lfreemarker/core/HashLiteral;Lfreemarker/core/Environment;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 113
    iput-object p1, p0, Lfreemarker/core/HashLiteral$SequenceHash;->this$0:Lfreemarker/core/HashLiteral;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    invoke-static {p1}, Lfreemarker/template/_TemplateAPI;->getTemplateLanguageVersionAsInt(Lfreemarker/core/TemplateObject;)I

    move-result v0

    sget v1, Lfreemarker/template/_TemplateAPI;->VERSION_INT_2_3_21:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_4a

    .line 115
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lfreemarker/core/HashLiteral$SequenceHash;->map:Ljava/util/HashMap;

    .line 116
    :goto_15
    # getter for: Lfreemarker/core/HashLiteral;->size:I
    invoke-static {p1}, Lfreemarker/core/HashLiteral;->access$000(Lfreemarker/core/HashLiteral;)I

    move-result v0

    if-ge v2, v0, :cond_b6

    .line 117
    # getter for: Lfreemarker/core/HashLiteral;->keys:Ljava/util/ArrayList;
    invoke-static {p1}, Lfreemarker/core/HashLiteral;->access$100(Lfreemarker/core/HashLiteral;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/core/Expression;

    .line 118
    # getter for: Lfreemarker/core/HashLiteral;->values:Ljava/util/ArrayList;
    invoke-static {p1}, Lfreemarker/core/HashLiteral;->access$200(Lfreemarker/core/HashLiteral;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfreemarker/core/Expression;

    .line 119
    invoke-virtual {v0, p2}, Lfreemarker/core/Expression;->evalAndCoerceToPlainText(Lfreemarker/core/Environment;)Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-virtual {v1, p2}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v3

    if-eqz p2, :cond_3f

    .line 121
    invoke-virtual {p2}, Lfreemarker/core/Environment;->isClassicCompatible()Z

    move-result v4

    if-nez v4, :cond_42

    .line 122
    :cond_3f
    invoke-virtual {v1, v3, p2}, Lfreemarker/core/Expression;->assertNonNull(Lfreemarker/template/TemplateModel;Lfreemarker/core/Environment;)V

    .line 124
    :cond_42
    iget-object v1, p0, Lfreemarker/core/HashLiteral$SequenceHash;->map:Ljava/util/HashMap;

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 129
    :cond_4a
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfreemarker/core/HashLiteral$SequenceHash;->map:Ljava/util/HashMap;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    # getter for: Lfreemarker/core/HashLiteral;->size:I
    invoke-static {p1}, Lfreemarker/core/HashLiteral;->access$000(Lfreemarker/core/HashLiteral;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 131
    new-instance v1, Ljava/util/ArrayList;

    # getter for: Lfreemarker/core/HashLiteral;->size:I
    invoke-static {p1}, Lfreemarker/core/HashLiteral;->access$000(Lfreemarker/core/HashLiteral;)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 132
    :goto_63
    # getter for: Lfreemarker/core/HashLiteral;->size:I
    invoke-static {p1}, Lfreemarker/core/HashLiteral;->access$000(Lfreemarker/core/HashLiteral;)I

    move-result v3

    if-ge v2, v3, :cond_9e

    .line 133
    # getter for: Lfreemarker/core/HashLiteral;->keys:Ljava/util/ArrayList;
    invoke-static {p1}, Lfreemarker/core/HashLiteral;->access$100(Lfreemarker/core/HashLiteral;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfreemarker/core/Expression;

    .line 134
    # getter for: Lfreemarker/core/HashLiteral;->values:Ljava/util/ArrayList;
    invoke-static {p1}, Lfreemarker/core/HashLiteral;->access$200(Lfreemarker/core/HashLiteral;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfreemarker/core/Expression;

    .line 135
    invoke-virtual {v3, p2}, Lfreemarker/core/Expression;->evalAndCoerceToPlainText(Lfreemarker/core/Environment;)Ljava/lang/String;

    move-result-object v3

    .line 136
    invoke-virtual {v4, p2}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v5

    if-eqz p2, :cond_8d

    .line 137
    invoke-virtual {p2}, Lfreemarker/core/Environment;->isClassicCompatible()Z

    move-result v6

    if-nez v6, :cond_90

    .line 138
    :cond_8d
    invoke-virtual {v4, v5, p2}, Lfreemarker/core/Expression;->assertNonNull(Lfreemarker/template/TemplateModel;Lfreemarker/core/Environment;)V

    .line 140
    :cond_90
    iget-object v4, p0, Lfreemarker/core/HashLiteral$SequenceHash;->map:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_63

    .line 144
    :cond_9e
    new-instance p1, Lfreemarker/core/CollectionAndSequence;

    new-instance p2, Lfreemarker/template/SimpleSequence;

    invoke-direct {p2, v0}, Lfreemarker/template/SimpleSequence;-><init>(Ljava/util/Collection;)V

    invoke-direct {p1, p2}, Lfreemarker/core/CollectionAndSequence;-><init>(Lfreemarker/template/TemplateSequenceModel;)V

    iput-object p1, p0, Lfreemarker/core/HashLiteral$SequenceHash;->keyCollection:Lfreemarker/template/TemplateCollectionModel;

    .line 145
    new-instance p1, Lfreemarker/core/CollectionAndSequence;

    new-instance p2, Lfreemarker/template/SimpleSequence;

    invoke-direct {p2, v1}, Lfreemarker/template/SimpleSequence;-><init>(Ljava/util/Collection;)V

    invoke-direct {p1, p2}, Lfreemarker/core/CollectionAndSequence;-><init>(Lfreemarker/template/TemplateSequenceModel;)V

    iput-object p1, p0, Lfreemarker/core/HashLiteral$SequenceHash;->valueCollection:Lfreemarker/template/TemplateCollectionModel;

    :cond_b6
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .registers 3

    .line 170
    iget-object v0, p0, Lfreemarker/core/HashLiteral$SequenceHash;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfreemarker/template/TemplateModel;

    return-object p1
.end method

.method public isEmpty()Z
    .registers 2

    .line 174
    iget-object v0, p0, Lfreemarker/core/HashLiteral$SequenceHash;->this$0:Lfreemarker/core/HashLiteral;

    # getter for: Lfreemarker/core/HashLiteral;->size:I
    invoke-static {v0}, Lfreemarker/core/HashLiteral;->access$000(Lfreemarker/core/HashLiteral;)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public keyValuePairIterator()Lfreemarker/template/TemplateHashModelEx2$KeyValuePairIterator;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 183
    new-instance v0, Lfreemarker/core/HashLiteral$SequenceHash$1;

    invoke-direct {v0, p0}, Lfreemarker/core/HashLiteral$SequenceHash$1;-><init>(Lfreemarker/core/HashLiteral$SequenceHash;)V

    return-object v0
.end method

.method public keys()Lfreemarker/template/TemplateCollectionModel;
    .registers 4

    .line 154
    iget-object v0, p0, Lfreemarker/core/HashLiteral$SequenceHash;->keyCollection:Lfreemarker/template/TemplateCollectionModel;

    if-nez v0, :cond_16

    .line 156
    new-instance v0, Lfreemarker/core/CollectionAndSequence;

    new-instance v1, Lfreemarker/template/SimpleSequence;

    iget-object v2, p0, Lfreemarker/core/HashLiteral$SequenceHash;->map:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Lfreemarker/template/SimpleSequence;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1}, Lfreemarker/core/CollectionAndSequence;-><init>(Lfreemarker/template/TemplateSequenceModel;)V

    iput-object v0, p0, Lfreemarker/core/HashLiteral$SequenceHash;->keyCollection:Lfreemarker/template/TemplateCollectionModel;

    .line 158
    :cond_16
    iget-object v0, p0, Lfreemarker/core/HashLiteral$SequenceHash;->keyCollection:Lfreemarker/template/TemplateCollectionModel;

    return-object v0
.end method

.method public size()I
    .registers 2

    .line 150
    iget-object v0, p0, Lfreemarker/core/HashLiteral$SequenceHash;->this$0:Lfreemarker/core/HashLiteral;

    # getter for: Lfreemarker/core/HashLiteral;->size:I
    invoke-static {v0}, Lfreemarker/core/HashLiteral;->access$000(Lfreemarker/core/HashLiteral;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 179
    iget-object v0, p0, Lfreemarker/core/HashLiteral$SequenceHash;->this$0:Lfreemarker/core/HashLiteral;

    invoke-virtual {v0}, Lfreemarker/core/HashLiteral;->getCanonicalForm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Lfreemarker/template/TemplateCollectionModel;
    .registers 4

    .line 162
    iget-object v0, p0, Lfreemarker/core/HashLiteral$SequenceHash;->valueCollection:Lfreemarker/template/TemplateCollectionModel;

    if-nez v0, :cond_16

    .line 164
    new-instance v0, Lfreemarker/core/CollectionAndSequence;

    new-instance v1, Lfreemarker/template/SimpleSequence;

    iget-object v2, p0, Lfreemarker/core/HashLiteral$SequenceHash;->map:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Lfreemarker/template/SimpleSequence;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1}, Lfreemarker/core/CollectionAndSequence;-><init>(Lfreemarker/template/TemplateSequenceModel;)V

    iput-object v0, p0, Lfreemarker/core/HashLiteral$SequenceHash;->valueCollection:Lfreemarker/template/TemplateCollectionModel;

    .line 166
    :cond_16
    iget-object v0, p0, Lfreemarker/core/HashLiteral$SequenceHash;->valueCollection:Lfreemarker/template/TemplateCollectionModel;

    return-object v0
.end method
