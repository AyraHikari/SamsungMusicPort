.class Lcom/facebook/share/widget/JoinAppGroupDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/internal/CallbackManagerImpl$Callback;


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

.field final synthetic val$resultProcessor:Lcom/facebook/share/internal/ResultProcessor;


# direct methods
.method constructor <init>(Lcom/facebook/share/widget/JoinAppGroupDialog;Lcom/facebook/share/internal/ResultProcessor;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/facebook/share/widget/JoinAppGroupDialog$2;->this$0:Lcom/facebook/share/widget/JoinAppGroupDialog;

    iput-object p2, p0, Lcom/facebook/share/widget/JoinAppGroupDialog$2;->val$resultProcessor:Lcom/facebook/share/internal/ResultProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(ILandroid/content/Intent;)Z
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/facebook/share/widget/JoinAppGroupDialog$2;->this$0:Lcom/facebook/share/widget/JoinAppGroupDialog;

    .line 179
    invoke-virtual {v0}, Lcom/facebook/share/widget/JoinAppGroupDialog;->getRequestCode()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/share/widget/JoinAppGroupDialog$2;->val$resultProcessor:Lcom/facebook/share/internal/ResultProcessor;

    .line 178
    invoke-static {v0, p1, p2, v1}, Lcom/facebook/share/internal/ShareInternalUtility;->handleActivityResult(IILandroid/content/Intent;Lcom/facebook/share/internal/ResultProcessor;)Z

    move-result p1

    return p1
.end method
