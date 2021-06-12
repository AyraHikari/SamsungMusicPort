.class Lcom/facebook/share/widget/CreateAppGroupDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/internal/CallbackManagerImpl$Callback;


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

.field final synthetic val$resultProcessor:Lcom/facebook/share/internal/ResultProcessor;


# direct methods
.method constructor <init>(Lcom/facebook/share/widget/CreateAppGroupDialog;Lcom/facebook/share/internal/ResultProcessor;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/facebook/share/widget/CreateAppGroupDialog$2;->this$0:Lcom/facebook/share/widget/CreateAppGroupDialog;

    iput-object p2, p0, Lcom/facebook/share/widget/CreateAppGroupDialog$2;->val$resultProcessor:Lcom/facebook/share/internal/ResultProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(ILandroid/content/Intent;)Z
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/facebook/share/widget/CreateAppGroupDialog$2;->this$0:Lcom/facebook/share/widget/CreateAppGroupDialog;

    .line 181
    invoke-virtual {v0}, Lcom/facebook/share/widget/CreateAppGroupDialog;->getRequestCode()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/share/widget/CreateAppGroupDialog$2;->val$resultProcessor:Lcom/facebook/share/internal/ResultProcessor;

    .line 180
    invoke-static {v0, p1, p2, v1}, Lcom/facebook/share/internal/ShareInternalUtility;->handleActivityResult(IILandroid/content/Intent;Lcom/facebook/share/internal/ResultProcessor;)Z

    move-result p1

    return p1
.end method
