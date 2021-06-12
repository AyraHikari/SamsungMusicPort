.class public interface abstract Lcom/facebook/FacebookCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RESU",
        "LT:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onCancel()V
.end method

.method public abstract onError(Lcom/facebook/FacebookException;)V
.end method

.method public abstract onSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRESU",
            "LT;",
            ")V"
        }
    .end annotation
.end method
