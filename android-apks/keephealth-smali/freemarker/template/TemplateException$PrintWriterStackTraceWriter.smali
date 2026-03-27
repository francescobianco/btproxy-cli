.class Lfreemarker/template/TemplateException$PrintWriterStackTraceWriter;
.super Ljava/lang/Object;
.source "TemplateException.java"

# interfaces
.implements Lfreemarker/template/TemplateException$StackTraceWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/template/TemplateException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrintWriterStackTraceWriter"
.end annotation


# instance fields
.field private final out:Ljava/io/PrintWriter;


# direct methods
.method constructor <init>(Ljava/io/PrintWriter;)V
    .registers 2

    .line 635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 636
    iput-object p1, p0, Lfreemarker/template/TemplateException$PrintWriterStackTraceWriter;->out:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public print(Ljava/lang/Object;)V
    .registers 3

    .line 640
    iget-object v0, p0, Lfreemarker/template/TemplateException$PrintWriterStackTraceWriter;->out:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    return-void
.end method

.method public printStandardStackTrace(Ljava/lang/Throwable;)V
    .registers 3

    .line 652
    instance-of v0, p1, Lfreemarker/template/TemplateException;

    if-eqz v0, :cond_c

    .line 653
    check-cast p1, Lfreemarker/template/TemplateException;

    iget-object v0, p0, Lfreemarker/template/TemplateException$PrintWriterStackTraceWriter;->out:Ljava/io/PrintWriter;

    invoke-virtual {p1, v0}, Lfreemarker/template/TemplateException;->printStandardStackTrace(Ljava/io/PrintWriter;)V

    goto :goto_11

    .line 655
    :cond_c
    iget-object v0, p0, Lfreemarker/template/TemplateException$PrintWriterStackTraceWriter;->out:Ljava/io/PrintWriter;

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    :goto_11
    return-void
.end method

.method public println()V
    .registers 2

    .line 648
    iget-object v0, p0, Lfreemarker/template/TemplateException$PrintWriterStackTraceWriter;->out:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public println(Ljava/lang/Object;)V
    .registers 3

    .line 644
    iget-object v0, p0, Lfreemarker/template/TemplateException$PrintWriterStackTraceWriter;->out:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method
