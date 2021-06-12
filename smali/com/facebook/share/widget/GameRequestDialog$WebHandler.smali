.class Lcom/facebook/share/widget/GameRequestDialog$WebHandler;
.super Lcom/facebook/internal/FacebookDialogBase$ModeHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/widget/GameRequestDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/internal/FacebookDialogBase<",
        "Lcom/facebook/share/model/GameRequestContent;",
        "Lcom/facebook/share/widget/GameRequestDialog$Result;",
        ">.ModeHandler;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/widget/GameRequestDialog;


# direct methods
.method private constructor <init>(Lcom/facebook/share/widget/GameRequestDialog;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/facebook/share/widget/GameRequestDialog$WebHandler;->this$0:Lcom/facebook/share/widget/GameRequestDialog;

    invoke-direct {p0, p1}, Lcom/facebook/internal/FacebookDialogBase$ModeHandler;-><init>(Lcom/facebook/internal/FacebookDialogBase;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/widget/GameRequestDialog;Lcom/facebook/share/widget/GameRequestDialog$1;)V
    .locals 0

    .line 216
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/GameRequestDialog$WebHandler;-><init>(Lcom/facebook/share/widget/GameRequestDialog;)V

    return-void
.end method


# virtual methods
.method public canShow(Lcom/facebook/share/model/GameRequestContent;Z)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic canShow(Ljava/lang/Object;Z)Z
    .locals 0

    .line 216
    check-cast p1, Lcom/facebook/share/model/GameRequestContent;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/share/widget/GameRequestDialog$WebHandler;->canShow(Lcom/facebook/share/model/GameRequestContent;Z)Z

    move-result p1

    return p1
.end method

.method public createAppCall(Lcom/facebook/share/model/GameRequestContent;)Lcom/facebook/internal/AppCall;
    .locals 2

    .line 224
    invoke-static {p1}, Lcom/facebook/share/internal/GameRequestValidation;->validate(Lcom/facebook/share/model/GameRequestContent;)V

    .line 225
    iget-object v0, p0, Lcom/facebook/share/widget/GameRequestDialog$WebHandler;->this$0:Lcom/facebook/share/widget/GameRequestDialog;

    invoke-virtual {v0}, Lcom/facebook/share/widget/GameRequestDialog;->createBaseAppCall()Lcom/facebook/internal/AppCall;

    move-result-object v0

    const-string v1, "apprequests"

    .line 229
    invoke-static {p1}, Lcom/facebook/share/internal/WebDialogParameters;->create(Lcom/facebook/share/model/GameRequestContent;)Landroid/os/Bundle;

    move-result-object p1

    .line 226
    invoke-static {v0, v1, p1}, Lcom/facebook/internal/DialogPresenter;->setupAppCallForWebDialog(Lcom/facebook/internal/AppCall;Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public bridge synthetic createAppCall(Ljava/lang/Object;)Lcom/facebook/internal/AppCall;
    .locals 0

    .line 216
    check-cast p1, Lcom/facebook/share/model/GameRequestContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/widget/GameRequestDialog$WebHandler;->createAppCall(Lcom/facebook/share/model/GameRequestContent;)Lcom/facebook/internal/AppCall;

    move-result-object p1

    return-object p1
.end method
