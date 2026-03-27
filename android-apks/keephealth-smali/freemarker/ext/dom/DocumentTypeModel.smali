.class Lfreemarker/ext/dom/DocumentTypeModel;
.super Lfreemarker/ext/dom/NodeModel;
.source "DocumentTypeModel.java"


# direct methods
.method public constructor <init>(Lorg/w3c/dom/DocumentType;)V
    .registers 2

    .line 32
    invoke-direct {p0, p1}, Lfreemarker/ext/dom/NodeModel;-><init>(Lorg/w3c/dom/Node;)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 45
    new-instance p1, Lfreemarker/template/TemplateModelException;

    const-string v0, "accessing properties of a DTD is not currently supported"

    invoke-direct {p1, v0}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAsString()Ljava/lang/String;
    .registers 2

    .line 36
    iget-object v0, p0, Lfreemarker/ext/dom/DocumentTypeModel;->node:Lorg/w3c/dom/Node;

    check-cast v0, Lorg/w3c/dom/ProcessingInstruction;

    invoke-interface {v0}, Lorg/w3c/dom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChildren()Lfreemarker/template/TemplateSequenceModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 40
    new-instance v0, Lfreemarker/template/TemplateModelException;

    const-string v1, "entering the child nodes of a DTD node is not currently supported"

    invoke-direct {v0, v1}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNodeName()Ljava/lang/String;
    .registers 3

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "@document_type$"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lfreemarker/ext/dom/DocumentTypeModel;->node:Lorg/w3c/dom/Node;

    check-cast v1, Lorg/w3c/dom/DocumentType;

    invoke-interface {v1}, Lorg/w3c/dom/DocumentType;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
