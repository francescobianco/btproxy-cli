.class public interface abstract Lfreemarker/template/TemplateNodeModelEx;
.super Ljava/lang/Object;
.source "TemplateNodeModelEx.java"

# interfaces
.implements Lfreemarker/template/TemplateNodeModel;


# virtual methods
.method public abstract getNextSibling()Lfreemarker/template/TemplateNodeModelEx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation
.end method

.method public abstract getPreviousSibling()Lfreemarker/template/TemplateNodeModelEx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation
.end method
