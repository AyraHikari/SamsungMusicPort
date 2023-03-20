.class interface abstract Lorg/simpleframework/xml/core/MethodPart;
.super Ljava/lang/Object;
.source "MethodPart.java"


# virtual methods
.method public abstract getAnnotation()Ljava/lang/annotation/Annotation;
.end method

.method public abstract getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract getDeclaringClass()Ljava/lang/Class;
.end method

.method public abstract getDependent()Ljava/lang/Class;
.end method

.method public abstract getDependents()[Ljava/lang/Class;
.end method

.method public abstract getMethod()Ljava/lang/reflect/Method;
.end method

.method public abstract getMethodType()Lorg/simpleframework/xml/core/MethodType;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getType()Ljava/lang/Class;
.end method

.method public abstract toString()Ljava/lang/String;
.end method
