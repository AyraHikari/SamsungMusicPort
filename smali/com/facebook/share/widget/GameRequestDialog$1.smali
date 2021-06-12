.class Lcom/facebook/share/widget/GameRequestDialog$1;
.super Lcom/facebook/share/internal/ResultProcessor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/widget/GameRequestDialog;->registerCallbackImpl(Lcom/facebook/internal/CallbackManagerImpl;Lcom/facebook/FacebookCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/widget/GameRequestDialog;

.field final synthetic val$callback:Lcom/facebook/FacebookCallback;


# direct methods
.method constructor <init>(Lcom/facebook/share/widget/GameRequestDialog;Lcom/facebook/FacebookCallback;Lcom/facebook/FacebookCallback;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/facebook/share/widget/GameRequestDialog$1;->this$0:Lcom/facebook/share/widget/GameRequestDialog;

    iput-object p3, p0, Lcom/facebook/share/widget/GameRequestDialog$1;->val$callback:Lcom/facebook/FacebookCallback;

    invoke-direct {p0, p2}, Lcom/facebook/share/internal/ResultProcessor;-><init>(Lcom/facebook/FacebookCallback;)V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/facebook/internal/AppCall;Landroid/os/Bundle;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 182
    iget-object p1, p0, Lcom/facebook/share/widget/GameRequestDialog$1;->val$callback:Lcom/facebook/FacebookCallback;

    new-instance v0, Lcom/facebook/share/widget/GameRequestDialog$Result;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/facebook/share/widget/GameRequestDialog$Result;-><init>(Landroid/os/Bundle;Lcom/facebook/share/widget/GameRequestDialog$1;)V

    invoke-interface {p1, v0}, Lcom/facebook/FacebookCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 184
    :cond_0
    invoke-virtual {p0, p1}, Lcom/facebook/share/widget/GameRequestDialog$1;->onCancel(Lcom/facebook/internal/AppCall;)V

    :goto_0
    return-void
.end method
