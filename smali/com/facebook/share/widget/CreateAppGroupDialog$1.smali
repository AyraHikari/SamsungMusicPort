.class Lcom/facebook/share/widget/CreateAppGroupDialog$1;
.super Lcom/facebook/share/internal/ResultProcessor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/widget/CreateAppGroupDialog;->registerCallbackImpl(Lcom/facebook/internal/CallbackManagerImpl;Lcom/facebook/FacebookCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/widget/CreateAppGroupDialog;

.field final synthetic val$callback:Lcom/facebook/FacebookCallback;


# direct methods
.method constructor <init>(Lcom/facebook/share/widget/CreateAppGroupDialog;Lcom/facebook/FacebookCallback;Lcom/facebook/FacebookCallback;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/facebook/share/widget/CreateAppGroupDialog$1;->this$0:Lcom/facebook/share/widget/CreateAppGroupDialog;

    iput-object p3, p0, Lcom/facebook/share/widget/CreateAppGroupDialog$1;->val$callback:Lcom/facebook/FacebookCallback;

    invoke-direct {p0, p2}, Lcom/facebook/share/internal/ResultProcessor;-><init>(Lcom/facebook/FacebookCallback;)V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/facebook/internal/AppCall;Landroid/os/Bundle;)V
    .locals 2

    .line 173
    iget-object p1, p0, Lcom/facebook/share/widget/CreateAppGroupDialog$1;->val$callback:Lcom/facebook/FacebookCallback;

    new-instance v0, Lcom/facebook/share/widget/CreateAppGroupDialog$Result;

    const-string v1, "id"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/facebook/share/widget/CreateAppGroupDialog$Result;-><init>(Ljava/lang/String;Lcom/facebook/share/widget/CreateAppGroupDialog$1;)V

    invoke-interface {p1, v0}, Lcom/facebook/FacebookCallback;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
