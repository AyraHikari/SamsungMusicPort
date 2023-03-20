.class interface abstract Lorg/simpleframework/xml/core/Criteria;
.super Ljava/lang/Object;
.source "Criteria.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract commit(Ljava/lang/Object;)V
.end method

.method public abstract get(Ljava/lang/Object;)Lorg/simpleframework/xml/core/Variable;
.end method

.method public abstract get(Lorg/simpleframework/xml/core/Label;)Lorg/simpleframework/xml/core/Variable;
.end method

.method public abstract remove(Ljava/lang/Object;)Lorg/simpleframework/xml/core/Variable;
.end method

.method public abstract resolve(Ljava/lang/String;)Lorg/simpleframework/xml/core/Variable;
.end method

.method public abstract set(Lorg/simpleframework/xml/core/Label;Ljava/lang/Object;)V
.end method
