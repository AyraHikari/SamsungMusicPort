.class public abstract Lcom/facebook/share/internal/ResultProcessor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private appCallback:Lcom/facebook/FacebookCallback;


# direct methods
.method public constructor <init>(Lcom/facebook/FacebookCallback;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/facebook/share/internal/ResultProcessor;->appCallback:Lcom/facebook/FacebookCallback;

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/facebook/internal/AppCall;)V
    .locals 0

    .line 49
    iget-object p1, p0, Lcom/facebook/share/internal/ResultProcessor;->appCallback:Lcom/facebook/FacebookCallback;

    if-eqz p1, :cond_0

    .line 50
    iget-object p1, p0, Lcom/facebook/share/internal/ResultProcessor;->appCallback:Lcom/facebook/FacebookCallback;

    invoke-interface {p1}, Lcom/facebook/FacebookCallback;->onCancel()V

    :cond_0
    return-void
.end method

.method public onError(Lcom/facebook/internal/AppCall;Lcom/facebook/FacebookException;)V
    .locals 0

    .line 58
    iget-object p1, p0, Lcom/facebook/share/internal/ResultProcessor;->appCallback:Lcom/facebook/FacebookCallback;

    if-eqz p1, :cond_0

    .line 59
    iget-object p1, p0, Lcom/facebook/share/internal/ResultProcessor;->appCallback:Lcom/facebook/FacebookCallback;

    invoke-interface {p1, p2}, Lcom/facebook/FacebookCallback;->onError(Lcom/facebook/FacebookException;)V

    :cond_0
    return-void
.end method

.method public abstract onSuccess(Lcom/facebook/internal/AppCall;Landroid/os/Bundle;)V
.end method
