.class public interface abstract Lcom/facebook/AccessToken$AccessTokenRefreshCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/AccessToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AccessTokenRefreshCallback"
.end annotation


# virtual methods
.method public abstract OnTokenRefreshFailed(Lcom/facebook/FacebookException;)V
.end method

.method public abstract OnTokenRefreshed(Lcom/facebook/AccessToken;)V
.end method
