.class Lcom/facebook/share/widget/AppInviteDialog$NativeHandler;
.super Lcom/facebook/internal/FacebookDialogBase$ModeHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/widget/AppInviteDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativeHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/internal/FacebookDialogBase<",
        "Lcom/facebook/share/model/AppInviteContent;",
        "Lcom/facebook/share/widget/AppInviteDialog$Result;",
        ">.ModeHandler;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/widget/AppInviteDialog;


# direct methods
.method private constructor <init>(Lcom/facebook/share/widget/AppInviteDialog;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/facebook/share/widget/AppInviteDialog$NativeHandler;->this$0:Lcom/facebook/share/widget/AppInviteDialog;

    invoke-direct {p0, p1}, Lcom/facebook/internal/FacebookDialogBase$ModeHandler;-><init>(Lcom/facebook/internal/FacebookDialogBase;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/widget/AppInviteDialog;Lcom/facebook/share/widget/AppInviteDialog$1;)V
    .locals 0

    .line 233
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/AppInviteDialog$NativeHandler;-><init>(Lcom/facebook/share/widget/AppInviteDialog;)V

    return-void
.end method


# virtual methods
.method public canShow(Lcom/facebook/share/model/AppInviteContent;Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic canShow(Ljava/lang/Object;Z)Z
    .locals 0

    .line 233
    check-cast p1, Lcom/facebook/share/model/AppInviteContent;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/share/widget/AppInviteDialog$NativeHandler;->canShow(Lcom/facebook/share/model/AppInviteContent;Z)Z

    move-result p1

    return p1
.end method

.method public createAppCall(Lcom/facebook/share/model/AppInviteContent;)Lcom/facebook/internal/AppCall;
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/facebook/share/widget/AppInviteDialog$NativeHandler;->this$0:Lcom/facebook/share/widget/AppInviteDialog;

    invoke-virtual {v0}, Lcom/facebook/share/widget/AppInviteDialog;->createBaseAppCall()Lcom/facebook/internal/AppCall;

    move-result-object v0

    .line 243
    new-instance v1, Lcom/facebook/share/widget/AppInviteDialog$NativeHandler$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/share/widget/AppInviteDialog$NativeHandler$1;-><init>(Lcom/facebook/share/widget/AppInviteDialog$NativeHandler;Lcom/facebook/share/model/AppInviteContent;)V

    .line 260
    invoke-static {}, Lcom/facebook/share/widget/AppInviteDialog;->access$300()Lcom/facebook/internal/DialogFeature;

    move-result-object p1

    .line 243
    invoke-static {v0, v1, p1}, Lcom/facebook/internal/DialogPresenter;->setupAppCallForNativeDialog(Lcom/facebook/internal/AppCall;Lcom/facebook/internal/DialogPresenter$ParameterProvider;Lcom/facebook/internal/DialogFeature;)V

    return-object v0
.end method

.method public bridge synthetic createAppCall(Ljava/lang/Object;)Lcom/facebook/internal/AppCall;
    .locals 0

    .line 233
    check-cast p1, Lcom/facebook/share/model/AppInviteContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/widget/AppInviteDialog$NativeHandler;->createAppCall(Lcom/facebook/share/model/AppInviteContent;)Lcom/facebook/internal/AppCall;

    move-result-object p1

    return-object p1
.end method
