.class public interface abstract annotation Lorg/simpleframework/xml/Order;
.super Ljava/lang/Object;
.source "Order.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lorg/simpleframework/xml/Order;
        attributes = {}
        elements = {}
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract attributes()[Ljava/lang/String;
.end method

.method public abstract elements()[Ljava/lang/String;
.end method
