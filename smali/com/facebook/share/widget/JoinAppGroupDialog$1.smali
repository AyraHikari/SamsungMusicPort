.class Lcom/facebook/share/widget/JoinAppGroupDialog$1;
.super Lcom/facebook/share/internal/ResultProcessor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/widget/JoinAppGroupDialog;->registerCallbackImpl(Lcom/facebook/internal/CallbackManagerImpl;Lcom/facebook/FacebookCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/widget/JoinAppGroupDialog;

.field final synthetic val$callback:Lcom/facebook/FacebookCallback;


# direct methods
.method constructor <init>(Lcom/facebook/share/widget/JoinAppGroupDialog;Lcom/facebook/FacebookCallback;Lcom/facebook/FacebookCallback;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/facebook/share/widget/JoinAppGroupDialog$1;->this$0:Lcom/facebook/share/widget/JoinAppGroupDialog;

    iput-object p3, p0, Lcom/facebook/share/widget/JoinAppGroupDialog$1;->val$callback:Lcom/facebook/FacebookCallback;

    invoke-direct {p0, p2}, Lcom/facebook/share/internal/ResultProcessor;-><init>(Lcom/facebook/FacebookCallback;)V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/facebook/internal/AppCall;Landroid/os/Bundle;)V
    .locals 2

    .line 171
    iget-object p1, p0, Lcom/facebook/share/widget/JoinAppGroupDialog$1;->val$callback:Lcom/facebook/FacebookCallback;

    new-instance v0, Lcom/facebook/share/widget/JoinAppGroupDialog$Result;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/facebook/share/widget/JoinAppGroupDialog$Result;-><init>(Landroid/os/Bundle;Lcom/facebook/share/widget/JoinAppGroupDialog$1;)V

    invoke-interface {p1, v0}, Lcom/facebook/FacebookCallback;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
