.class public interface abstract annotation Lorg/simpleframework/xml/Text;
.super Ljava/lang/Object;
.source "Text.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lorg/simpleframework/xml/Text;
        data = false
        empty = ""
        required = true
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract data()Z
.end method

.method public abstract empty()Ljava/lang/String;
.end method

.method public abstract required()Z
.end method
