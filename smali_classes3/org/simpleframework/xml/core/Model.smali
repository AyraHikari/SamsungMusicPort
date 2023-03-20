.class interface abstract Lorg/simpleframework/xml/core/Model;
.super Ljava/lang/Object;
.source "Model.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getAttributes()Lorg/simpleframework/xml/core/LabelMap;
.end method

.method public abstract getElements()Lorg/simpleframework/xml/core/LabelMap;
.end method

.method public abstract getExpression()Lorg/simpleframework/xml/core/Expression;
.end method

.method public abstract getIndex()I
.end method

.method public abstract getModels()Lorg/simpleframework/xml/core/ModelMap;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPrefix()Ljava/lang/String;
.end method

.method public abstract getText()Lorg/simpleframework/xml/core/Label;
.end method

.method public abstract isAttribute(Ljava/lang/String;)Z
.end method

.method public abstract isComposite()Z
.end method

.method public abstract isElement(Ljava/lang/String;)Z
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract isModel(Ljava/lang/String;)Z
.end method

.method public abstract lookup(Ljava/lang/String;I)Lorg/simpleframework/xml/core/Model;
.end method

.method public abstract lookup(Lorg/simpleframework/xml/core/Expression;)Lorg/simpleframework/xml/core/Model;
.end method

.method public abstract register(Ljava/lang/String;Ljava/lang/String;I)Lorg/simpleframework/xml/core/Model;
.end method

.method public abstract register(Lorg/simpleframework/xml/core/Label;)V
.end method

.method public abstract registerAttribute(Ljava/lang/String;)V
.end method

.method public abstract registerAttribute(Lorg/simpleframework/xml/core/Label;)V
.end method

.method public abstract registerElement(Ljava/lang/String;)V
.end method

.method public abstract registerElement(Lorg/simpleframework/xml/core/Label;)V
.end method

.method public abstract registerText(Lorg/simpleframework/xml/core/Label;)V
.end method

.method public abstract validate(Ljava/lang/Class;)V
.end method
