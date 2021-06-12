.class Lcom/facebook/share/widget/JoinAppGroupDialog$WebHandler;
.super Lcom/facebook/internal/FacebookDialogBase$ModeHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/widget/JoinAppGroupDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/internal/FacebookDialogBase<",
        "Ljava/lang/String;",
        "Lcom/facebook/share/widget/JoinAppGroupDialog$Result;",
        ">.ModeHandler;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/widget/JoinAppGroupDialog;


# direct methods
.method private constructor <init>(Lcom/facebook/share/widget/JoinAppGroupDialog;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/facebook/share/widget/JoinAppGroupDialog$WebHandler;->this$0:Lcom/facebook/share/widget/JoinAppGroupDialog;

    invoke-direct {p0, p1}, Lcom/facebook/internal/FacebookDialogBase$ModeHandler;-><init>(Lcom/facebook/internal/FacebookDialogBase;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/widget/JoinAppGroupDialog;Lcom/facebook/share/widget/JoinAppGroupDialog$1;)V
    .locals 0

    .line 202
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/JoinAppGroupDialog$WebHandler;-><init>(Lcom/facebook/share/widget/JoinAppGroupDialog;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic canShow(Ljava/lang/Object;Z)Z
    .locals 0

    .line 202
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/share/widget/JoinAppGroupDialog$WebHandler;->canShow(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public canShow(Ljava/lang/String;Z)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic createAppCall(Ljava/lang/Object;)Lcom/facebook/internal/AppCall;
    .locals 0

    .line 202
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/facebook/share/widget/JoinAppGroupDialog$WebHandler;->createAppCall(Ljava/lang/String;)Lcom/facebook/internal/AppCall;

    move-result-object p1

    return-object p1
.end method

.method public createAppCall(Ljava/lang/String;)Lcom/facebook/internal/AppCall;
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/facebook/share/widget/JoinAppGroupDialog$WebHandler;->this$0:Lcom/facebook/share/widget/JoinAppGroupDialog;

    invoke-virtual {v0}, Lcom/facebook/share/widget/JoinAppGroupDialog;->createBaseAppCall()Lcom/facebook/internal/AppCall;

    move-result-object v0

    .line 211
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "id"

    .line 212
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "game_group_join"

    .line 214
    invoke-static {v0, p1, v1}, Lcom/facebook/internal/DialogPresenter;->setupAppCallForWebDialog(Lcom/facebook/internal/AppCall;Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method
