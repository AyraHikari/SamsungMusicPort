.class interface abstract Lorg/simpleframework/xml/core/Detail;
.super Ljava/lang/Object;
.source "Detail.java"


# virtual methods
.method public abstract getAccess()Lorg/simpleframework/xml/DefaultType;
.end method

.method public abstract getAnnotations()[Ljava/lang/annotation/Annotation;
.end method

.method public abstract getConstructors()[Ljava/lang/reflect/Constructor;
.end method

.method public abstract getFields()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/simpleframework/xml/core/FieldDetail;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMethods()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/simpleframework/xml/core/MethodDetail;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNamespace()Lorg/simpleframework/xml/Namespace;
.end method

.method public abstract getNamespaceList()Lorg/simpleframework/xml/NamespaceList;
.end method

.method public abstract getOrder()Lorg/simpleframework/xml/Order;
.end method

.method public abstract getOverride()Lorg/simpleframework/xml/DefaultType;
.end method

.method public abstract getRoot()Lorg/simpleframework/xml/Root;
.end method

.method public abstract getSuper()Ljava/lang/Class;
.end method

.method public abstract getType()Ljava/lang/Class;
.end method

.method public abstract isInstantiable()Z
.end method

.method public abstract isPrimitive()Z
.end method

.method public abstract isRequired()Z
.end method

.method public abstract isStrict()Z
.end method
