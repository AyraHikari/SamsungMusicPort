.class public interface abstract Lorg/simpleframework/xml/stream/OutputNode;
.super Ljava/lang/Object;
.source "OutputNode.java"

# interfaces
.implements Lorg/simpleframework/xml/stream/Node;


# virtual methods
.method public abstract commit()V
.end method

.method public abstract getAttributes()Lorg/simpleframework/xml/stream/NodeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/simpleframework/xml/stream/NodeMap<",
            "Lorg/simpleframework/xml/stream/OutputNode;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getChild(Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;
.end method

.method public abstract getComment()Ljava/lang/String;
.end method

.method public abstract getMode()Lorg/simpleframework/xml/stream/Mode;
.end method

.method public abstract getNamespaces()Lorg/simpleframework/xml/stream/NamespaceMap;
.end method

.method public abstract getParent()Lorg/simpleframework/xml/stream/OutputNode;
.end method

.method public abstract getPrefix()Ljava/lang/String;
.end method

.method public abstract getPrefix(Z)Ljava/lang/String;
.end method

.method public abstract getReference()Ljava/lang/String;
.end method

.method public abstract isCommitted()Z
.end method

.method public abstract isRoot()Z
.end method

.method public abstract remove()V
.end method

.method public abstract setAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;
.end method

.method public abstract setComment(Ljava/lang/String;)V
.end method

.method public abstract setData(Z)V
.end method

.method public abstract setMode(Lorg/simpleframework/xml/stream/Mode;)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setReference(Ljava/lang/String;)V
.end method

.method public abstract setValue(Ljava/lang/String;)V
.end method
