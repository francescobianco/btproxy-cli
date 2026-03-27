.class Lfreemarker/template/MapKeyValuePairIterator$1;
.super Ljava/lang/Object;
.source "MapKeyValuePairIterator.java"

# interfaces
.implements Lfreemarker/template/TemplateHashModelEx2$KeyValuePair;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/template/MapKeyValuePairIterator;->next()Lfreemarker/template/TemplateHashModelEx2$KeyValuePair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfreemarker/template/MapKeyValuePairIterator;

.field final synthetic val$entry:Ljava/util/Map$Entry;


# direct methods
.method constructor <init>(Lfreemarker/template/MapKeyValuePairIterator;Ljava/util/Map$Entry;)V
    .registers 3

    .line 52
    iput-object p1, p0, Lfreemarker/template/MapKeyValuePairIterator$1;->this$0:Lfreemarker/template/MapKeyValuePairIterator;

    iput-object p2, p0, Lfreemarker/template/MapKeyValuePairIterator$1;->val$entry:Ljava/util/Map$Entry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Lfreemarker/template/TemplateModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lfreemarker/template/MapKeyValuePairIterator$1;->this$0:Lfreemarker/template/MapKeyValuePairIterator;

    iget-object v1, p0, Lfreemarker/template/MapKeyValuePairIterator$1;->val$entry:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    # invokes: Lfreemarker/template/MapKeyValuePairIterator;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;
    invoke-static {v0, v1}, Lfreemarker/template/MapKeyValuePairIterator;->access$000(Lfreemarker/template/MapKeyValuePairIterator;Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lfreemarker/template/TemplateModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lfreemarker/template/MapKeyValuePairIterator$1;->this$0:Lfreemarker/template/MapKeyValuePairIterator;

    iget-object v1, p0, Lfreemarker/template/MapKeyValuePairIterator$1;->val$entry:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    # invokes: Lfreemarker/template/MapKeyValuePairIterator;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;
    invoke-static {v0, v1}, Lfreemarker/template/MapKeyValuePairIterator;->access$000(Lfreemarker/template/MapKeyValuePairIterator;Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    return-object v0
.end method
