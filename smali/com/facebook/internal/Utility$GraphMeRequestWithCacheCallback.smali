.class public interface abstract Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/Utility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GraphMeRequestWithCacheCallback"
.end annotation


# virtual methods
.method public abstract onFailure(Lcom/facebook/FacebookException;)V
.end method

.method public abstract onSuccess(Lorg/json/JSONObject;)V
.end method
