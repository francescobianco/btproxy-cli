.class public interface abstract Lfreemarker/template/TemplateHashModelEx2$KeyValuePairIterator;
.super Ljava/lang/Object;
.source "TemplateHashModelEx2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/template/TemplateHashModelEx2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "KeyValuePairIterator"
.end annotation


# virtual methods
.method public abstract hasNext()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation
.end method

.method public abstract next()Lfreemarker/template/TemplateHashModelEx2$KeyValuePair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation
.end method
