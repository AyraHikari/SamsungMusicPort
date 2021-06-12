.class public interface abstract Lcom/facebook/AccessToken$AccessTokenCreationCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/AccessToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AccessTokenCreationCallback"
.end annotation


# virtual methods
.method public abstract onError(Lcom/facebook/FacebookException;)V
.end method

.method public abstract onSuccess(Lcom/facebook/AccessToken;)V
.end method
