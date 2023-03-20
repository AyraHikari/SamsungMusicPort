.class interface abstract Lorg/simpleframework/xml/core/Expression;
.super Ljava/lang/Object;
.source "Expression.java"

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
.method public abstract getAttribute(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getElement(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getFirst()Ljava/lang/String;
.end method

.method public abstract getIndex()I
.end method

.method public abstract getLast()Ljava/lang/String;
.end method

.method public abstract getPath()Ljava/lang/String;
.end method

.method public abstract getPath(I)Lorg/simpleframework/xml/core/Expression;
.end method

.method public abstract getPath(II)Lorg/simpleframework/xml/core/Expression;
.end method

.method public abstract getPrefix()Ljava/lang/String;
.end method

.method public abstract isAttribute()Z
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract isPath()Z
.end method

.method public abstract toString()Ljava/lang/String;
.end method
