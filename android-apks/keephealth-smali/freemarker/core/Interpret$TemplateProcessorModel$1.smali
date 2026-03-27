.class Lfreemarker/core/Interpret$TemplateProcessorModel$1;
.super Ljava/io/Writer;
.source "Interpret.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/core/Interpret$TemplateProcessorModel;->getWriter(Ljava/io/Writer;Ljava/util/Map;)Ljava/io/Writer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lfreemarker/core/Interpret$TemplateProcessorModel;

.field final synthetic val$out:Ljava/io/Writer;


# direct methods
.method constructor <init>(Lfreemarker/core/Interpret$TemplateProcessorModel;Ljava/lang/Object;Ljava/io/Writer;)V
    .registers 4

    .line 140
    iput-object p1, p0, Lfreemarker/core/Interpret$TemplateProcessorModel$1;->this$1:Lfreemarker/core/Interpret$TemplateProcessorModel;

    iput-object p3, p0, Lfreemarker/core/Interpret$TemplateProcessorModel$1;->val$out:Ljava/io/Writer;

    invoke-direct {p0, p2}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lfreemarker/core/Interpret$TemplateProcessorModel$1;->val$out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public write([CII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lfreemarker/core/Interpret$TemplateProcessorModel$1;->val$out:Ljava/io/Writer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    return-void
.end method
