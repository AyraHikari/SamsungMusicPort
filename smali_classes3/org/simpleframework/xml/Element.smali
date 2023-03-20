.class public interface abstract annotation Lorg/simpleframework/xml/Element;
.super Ljava/lang/Object;
.source "Element.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lorg/simpleframework/xml/Element;
        data = false
        name = ""
        required = true
        type = V
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract data()Z
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract required()Z
.end method

.method public abstract type()Ljava/lang/Class;
.end method
