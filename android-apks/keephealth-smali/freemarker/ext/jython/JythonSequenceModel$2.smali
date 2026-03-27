.class Lfreemarker/ext/jython/JythonSequenceModel$2;
.super Ljava/lang/Object;
.source "JythonSequenceModel.java"

# interfaces
.implements Lfreemarker/template/TemplateModelIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/ext/jython/JythonSequenceModel;->iterator()Lfreemarker/template/TemplateModelIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field i:I

.field final synthetic this$0:Lfreemarker/ext/jython/JythonSequenceModel;


# direct methods
.method constructor <init>(Lfreemarker/ext/jython/JythonSequenceModel;)V
    .registers 2

    .line 78
    iput-object p1, p0, Lfreemarker/ext/jython/JythonSequenceModel$2;->this$0:Lfreemarker/ext/jython/JythonSequenceModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 79
    iput p1, p0, Lfreemarker/ext/jython/JythonSequenceModel$2;->i:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 82
    iget v0, p0, Lfreemarker/ext/jython/JythonSequenceModel$2;->i:I

    iget-object v1, p0, Lfreemarker/ext/jython/JythonSequenceModel$2;->this$0:Lfreemarker/ext/jython/JythonSequenceModel;

    invoke-virtual {v1}, Lfreemarker/ext/jython/JythonSequenceModel;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public next()Lfreemarker/template/TemplateModel;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lfreemarker/ext/jython/JythonSequenceModel$2;->this$0:Lfreemarker/ext/jython/JythonSequenceModel;

    iget v1, p0, Lfreemarker/ext/jython/JythonSequenceModel$2;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lfreemarker/ext/jython/JythonSequenceModel$2;->i:I

    invoke-virtual {v0, v1}, Lfreemarker/ext/jython/JythonSequenceModel;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object v0

    return-object v0
.end method
