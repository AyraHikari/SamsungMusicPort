.class public interface abstract annotation Lorg/simpleframework/xml/ElementMap;
.super Ljava/lang/Object;
.source "ElementMap.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lorg/simpleframework/xml/ElementMap;
        attribute = false
        data = false
        empty = true
        entry = ""
        inline = false
        key = ""
        keyType = V
        name = ""
        required = true
        value = ""
        valueType = V
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract attribute()Z
.end method

.method public abstract data()Z
.end method

.method public abstract empty()Z
.end method

.method public abstract entry()Ljava/lang/String;
.end method

.method public abstract inline()Z
.end method

.method public abstract key()Ljava/lang/String;
.end method

.method public abstract keyType()Ljava/lang/Class;
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract required()Z
.end method

.method public abstract value()Ljava/lang/String;
.end method

.method public abstract valueType()Ljava/lang/Class;
.end method
