.class Lfreemarker/ext/jsp/TagTransformModel$TagWriter;
.super Lfreemarker/ext/jsp/TagTransformModel$BodyContentImpl;
.source "TagTransformModel.java"

# interfaces
.implements Lfreemarker/template/TransformControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/jsp/TagTransformModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TagWriter"
.end annotation


# instance fields
.field private closed:Z

.field private final needDoublePop:Z

.field private needPop:Z

.field private final pageContext:Lfreemarker/ext/jsp/FreeMarkerPageContext;

.field private final tag:Ljavax/servlet/jsp/tagext/Tag;

.field final synthetic this$0:Lfreemarker/ext/jsp/TagTransformModel;


# direct methods
.method constructor <init>(Lfreemarker/ext/jsp/TagTransformModel;Ljava/io/Writer;Ljavax/servlet/jsp/tagext/Tag;Lfreemarker/ext/jsp/FreeMarkerPageContext;Z)V
    .registers 6

    .line 297
    iput-object p1, p0, Lfreemarker/ext/jsp/TagTransformModel$TagWriter;->this$0:Lfreemarker/ext/jsp/TagTransformModel;

    .line 298
    check-cast p2, Ljavax/servlet/jsp/JspWriter;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lfreemarker/ext/jsp/TagTransformModel$BodyContentImpl;-><init>(Ljavax/servlet/jsp/JspWriter;Z)V

    const/4 p2, 0x1

    .line 293
    iput-boolean p2, p0, Lfreemarker/ext/jsp/TagTransformModel$TagWriter;->needPop:Z

    .line 295
    iput-boolean p1, p0, Lfreemarker/ext/jsp/TagTransformModel$TagWriter;->closed:Z

    .line 299
    iput-boolean p5, p0, Lfreemarker/ext/jsp/TagTransformModel$TagWriter;->needDoublePop:Z

    .line 300
    iput-object p3, p0, Lfreemarker/ext/jsp/TagTransformModel$TagWriter;->tag:Ljavax/servlet/jsp/tagext/Tag;

    .line 301
    iput-object p4, p0, Lfreemarker/ext/jsp/TagTransformModel$TagWriter;->pageContext:Lfreemarker/ext/jsp/FreeMarkerPageContext;

    return-void
.end method

.method private endEvaluation()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/jsp/JspException;
        }
    .end annotation

    .line 378
    iget-boolean v0, p0, Lfreemarker/ext/jsp/TagTransformModel$TagWriter;->needPop:Z

    if-eqz v0, :cond_c

    .line 379
    iget-object v0, p0, Lfreemarker/ext/jsp/TagTransformModel$TagWriter;->pageContext:Lfreemarker/ext/jsp/FreeMarkerPageContext;

    invoke-virtual {v0}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->popWriter()V

    const/4 v0, 0x0

    .line 380
    iput-boolean v0, p0, Lfreemarker/ext/jsp/TagTransformModel$TagWriter;->needPop:Z

    .line 382
    :cond_c
    iget-object v0, p0, Lfreemarker/ext/jsp/TagTransformModel$TagWriter;->tag:Ljavax/servlet/jsp/tagext/Tag;

    invoke-interface {v0}, Ljavax/servlet/jsp/tagext/Tag;->doEndTag()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3b

    .line 383
    # getter for: Lfreemarker/ext/jsp/TagTransformModel;->LOG:Lfreemarker/log/Logger;
    invoke-static {}, Lfreemarker/ext/jsp/TagTransformModel;->access$200()Lfreemarker/log/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Tag.SKIP_PAGE was ignored from a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lfreemarker/ext/jsp/TagTransformModel$TagWriter;->tag:Ljavax/servlet/jsp/tagext/Tag;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfreemarker/log/Logger;->warn(Ljava/lang/String;)V

    :cond_3b
    return-void
.end method


# virtual methods
.method public afterBody()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    const-string v0, "Unexpected return value "

    .line 358
    :try_start_2
    iget-object v1, p0, Lfreemarker/ext/jsp/TagTransformModel$TagWriter;->this$0:Lfreemarker/ext/jsp/TagTransformModel;

    # getter for: Lfreemarker/ext/jsp/TagTransformModel;->isIterationTag:Z
    invoke-static {v1}, Lfreemarker/ext/jsp/TagTransformModel;->access$100(Lfreemarker/ext/jsp/TagTransformModel;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4b

    .line 359
    iget-object v1, p0, Lfreemarker/ext/jsp/TagTransformModel$TagWriter;->tag:Ljavax/servlet/jsp/tagext/Tag;

    check-cast v1, Ljavax/servlet/jsp/tagext/IterationTag;

    invoke-interface {v1}, Ljavax/servlet/jsp/tagext/IterationTag;->doAfterBody()I

    move-result v1

    if-eqz v1, :cond_47

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1a

    const/4 v0, 0x0

    return v0

    .line 367
    :cond_1a
    new-instance v2, Lfreemarker/template/TemplateModelException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/ext/jsp/TagTransformModel$TagWriter;->tag:Ljavax/servlet/jsp/tagext/Tag;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".doAfterBody()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 362
    :cond_47
    invoke-direct {p0}, Lfreemarker/ext/jsp/TagTransformModel$TagWriter;->endEvaluation()V

    return v2

    .line 370
    :cond_4b
    invoke-direct {p0}, Lfreemarker/ext/jsp/TagTransformModel$TagWriter;->endEvaluation()V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4e} :catch_4f

    return v2

    :catch_4f
    move-exception v0

    .line 373
    iget-object v1, p0, Lfreemarker/ext/jsp/TagTransformModel$TagWriter;->this$0:Lfreemarker/ext/jsp/TagTransformModel;

    invoke-virtual {v1, v0}, Lfreemarker/ext/jsp/TagTransformModel;->toTemplateModelExceptionOrRethrow(Ljava/lang/Exception;)Lfreemarker/template/TemplateModelException;

    move-result-object v0

    throw v0
.end method

.method public close()V
    .registers 3

    .line 397
    iget-boolean v0, p0, Lfreemarker/ext/jsp/TagTransformModel$TagWriter;->closed:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 400
    iput-boolean v0, p0, Lfreemarker/ext/jsp/TagTransformModel$TagWriter;->closed:Z

    .line 402
    iget-boolean v0, p0, Lfreemarker/ext/jsp/TagTransformModel$TagWriter;->needPop:Z

    if-eqz v0, :cond_11

    .line 403
    iget-object v0, p0, Lfreemarker/ext/jsp/TagTransformModel$TagWriter;->pageContext:Lfreemarker/ext/jsp/FreeMarkerPageContext;

    invoke-virtual {v0}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->popWriter()V

    .line 405
    :cond_11
    iget-object v0, p0, Lfreemarker/ext/jsp/TagTransformModel$TagWriter;->pageContext:Lfreemarker/ext/jsp/FreeMarkerPageContext;

    invoke-virtual {v0}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->popTopTag()V

    .line 407
    :try_start_16
    iget-object v0, p0, Lfreemarker/ext/jsp/TagTransformModel$TagWriter;->this$0:Lfreemarker/ext/jsp/TagTransformModel;

    # getter for: Lfreemarker/ext/jsp/TagTransformModel;->isTryCatchFinally:Z
    invoke-static {v0}, Lfreemarker/ext/jsp/TagTransformModel;->access$300(Lfreemarker/ext/jsp/TagTransformModel;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 408
    iget-object v0, p0, Lfreemarker/ext/jsp/TagTransformModel$TagWriter;->tag:Ljavax/servlet/jsp/tagext/Tag;

    check-cast v0, Ljavax/servlet/jsp/tagext/TryCatchFinally;

    invoke-interface {v0}, Ljavax/servlet/jsp/tagext/TryCatchFinally;->doFinally()V

    .line 411
    :cond_25
    iget-object v0, p0, Lfreemarker/ext/jsp/TagTransformModel$TagWriter;->tag:Ljavax/servlet/jsp/tagext/Tag;

    invoke-interface {v0}, Ljavax/servlet/jsp/tagext/Tag;->release()V
    :try_end_2a
    .catchall {:try_start_16 .. :try_end_2a} :catchall_34

    .line 413
    iget-boolean v0, p0, Lfreemarker/ext/jsp/TagTransformModel$TagWriter;->needDoublePop:Z

    if-eqz v0, :cond_33

    .line 414
    iget-object v0, p0, Lfreemarker/ext/jsp/TagTransformModel$TagWriter;->pageContext:Lfreemarker/ext/jsp/FreeMarkerPageContext;

    invoke-virtual {v0}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->popWriter()V

    :cond_33
    return-void

    :catchall_34
    move-exception v0

    .line 413
    iget-boolean v1, p0, Lfreemarker/ext/jsp/TagTransformModel$TagWriter;->needDoublePop:Z

    if-eqz v1, :cond_3e

    .line 414
    iget-object v1, p0, Lfreemarker/ext/jsp/TagTransformModel$TagWriter;->pageContext:Lfreemarker/ext/jsp/FreeMarkerPageContext;

    invoke-virtual {v1}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->popWriter()V

    .line 416
    :cond_3e
    throw v0
.end method

.method getPageContext()Lfreemarker/ext/jsp/FreeMarkerPageContext;
    .registers 2

    .line 314
    iget-object v0, p0, Lfreemarker/ext/jsp/TagTransformModel$TagWriter;->pageContext:Lfreemarker/ext/jsp/FreeMarkerPageContext;

    return-object v0
.end method

.method getTag()Ljavax/servlet/jsp/tagext/Tag;
    .registers 2

    .line 310
    iget-object v0, p0, Lfreemarker/ext/jsp/TagTransformModel$TagWriter;->tag:Ljavax/servlet/jsp/tagext/Tag;

    return-object v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 388
    iget-object v0, p0, Lfreemarker/ext/jsp/TagTransformModel$TagWriter;->this$0:Lfreemarker/ext/jsp/TagTransformModel;

    # getter for: Lfreemarker/ext/jsp/TagTransformModel;->isTryCatchFinally:Z
    invoke-static {v0}, Lfreemarker/ext/jsp/TagTransformModel;->access$300(Lfreemarker/ext/jsp/TagTransformModel;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 389
    iget-object v0, p0, Lfreemarker/ext/jsp/TagTransformModel$TagWriter;->tag:Ljavax/servlet/jsp/tagext/Tag;

    check-cast v0, Ljavax/servlet/jsp/tagext/TryCatchFinally;

    invoke-interface {v0, p1}, Ljavax/servlet/jsp/tagext/TryCatchFinally;->doCatch(Ljava/lang/Throwable;)V

    return-void

    .line 391
    :cond_10
    throw p1
.end method

.method public onStart()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    const-string v0, "Can\'t buffer body since "

    const-string v1, "Illegal return value "

    .line 320
    :try_start_4
    iget-object v2, p0, Lfreemarker/ext/jsp/TagTransformModel$TagWriter;->tag:Ljavax/servlet/jsp/tagext/Tag;

    invoke-interface {v2}, Ljavax/servlet/jsp/tagext/Tag;->doStartTag()I

    move-result v2

    if-eqz v2, :cond_7d

    const/4 v3, 0x1

    if-eq v2, v3, :cond_7c

    const/4 v4, 0x2

    if-eq v2, v4, :cond_43

    const/4 v0, 0x6

    if-ne v2, v0, :cond_16

    goto :goto_7d

    .line 347
    :cond_16
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lfreemarker/ext/jsp/TagTransformModel$TagWriter;->tag:Ljavax/servlet/jsp/tagext/Tag;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".doStartTag()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_43
    iget-object v1, p0, Lfreemarker/ext/jsp/TagTransformModel$TagWriter;->this$0:Lfreemarker/ext/jsp/TagTransformModel;

    # getter for: Lfreemarker/ext/jsp/TagTransformModel;->isBodyTag:Z
    invoke-static {v1}, Lfreemarker/ext/jsp/TagTransformModel;->access$000(Lfreemarker/ext/jsp/TagTransformModel;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 334
    invoke-virtual {p0}, Lfreemarker/ext/jsp/TagTransformModel$TagWriter;->initBuffer()V

    .line 335
    iget-object v0, p0, Lfreemarker/ext/jsp/TagTransformModel$TagWriter;->tag:Ljavax/servlet/jsp/tagext/Tag;

    check-cast v0, Ljavax/servlet/jsp/tagext/BodyTag;

    .line 336
    invoke-interface {v0, p0}, Ljavax/servlet/jsp/tagext/BodyTag;->setBodyContent(Ljavax/servlet/jsp/tagext/BodyContent;)V

    .line 337
    invoke-interface {v0}, Ljavax/servlet/jsp/tagext/BodyTag;->doInitBody()V

    goto :goto_7c

    .line 339
    :cond_59
    new-instance v1, Lfreemarker/template/TemplateModelException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lfreemarker/ext/jsp/TagTransformModel$TagWriter;->tag:Ljavax/servlet/jsp/tagext/Tag;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " does not implement BodyTag."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7c
    :goto_7c
    return v3

    .line 329
    :cond_7d
    :goto_7d
    invoke-direct {p0}, Lfreemarker/ext/jsp/TagTransformModel$TagWriter;->endEvaluation()V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_80} :catch_82

    const/4 v0, 0x0

    return v0

    :catch_82
    move-exception v0

    .line 351
    iget-object v1, p0, Lfreemarker/ext/jsp/TagTransformModel$TagWriter;->this$0:Lfreemarker/ext/jsp/TagTransformModel;

    invoke-virtual {v1, v0}, Lfreemarker/ext/jsp/TagTransformModel;->toTemplateModelExceptionOrRethrow(Ljava/lang/Exception;)Lfreemarker/template/TemplateModelException;

    move-result-object v0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TagWriter for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lfreemarker/ext/jsp/TagTransformModel$TagWriter;->tag:Ljavax/servlet/jsp/tagext/Tag;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " wrapping a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lfreemarker/ext/jsp/TagTransformModel$TagWriter;->getEnclosingWriter()Ljavax/servlet/jsp/JspWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
