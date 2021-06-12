.class public Lcom/facebook/share/widget/CreateAppGroupDialog;
.super Lcom/facebook/internal/FacebookDialogBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/widget/CreateAppGroupDialog$WebHandler;,
        Lcom/facebook/share/widget/CreateAppGroupDialog$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/internal/FacebookDialogBase<",
        "Lcom/facebook/share/model/AppGroupCreationContent;",
        "Lcom/facebook/share/widget/CreateAppGroupDialog$Result;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEFAULT_REQUEST_CODE:I

.field private static final GAME_GROUP_CREATION_DIALOG:Ljava/lang/String; = "game_group_create"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->AppGroupCreate:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 54
    invoke-virtual {v0}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v0

    sput v0, Lcom/facebook/share/widget/CreateAppGroupDialog;->DEFAULT_REQUEST_CODE:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 137
    sget v0, Lcom/facebook/share/widget/CreateAppGroupDialog;->DEFAULT_REQUEST_CODE:I

    invoke-direct {p0, p1, v0}, Lcom/facebook/internal/FacebookDialogBase;-><init>(Landroid/app/Activity;I)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 157
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/app/Fragment;)V

    invoke-direct {p0, v0}, Lcom/facebook/share/widget/CreateAppGroupDialog;-><init>(Lcom/facebook/internal/FragmentWrapper;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 147
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-direct {p0, v0}, Lcom/facebook/share/widget/CreateAppGroupDialog;-><init>(Lcom/facebook/internal/FragmentWrapper;)V

    return-void
.end method

.method private constructor <init>(Lcom/facebook/internal/FragmentWrapper;)V
    .locals 1

    .line 161
    sget v0, Lcom/facebook/share/widget/CreateAppGroupDialog;->DEFAULT_REQUEST_CODE:I

    invoke-direct {p0, p1, v0}, Lcom/facebook/internal/FacebookDialogBase;-><init>(Lcom/facebook/internal/FragmentWrapper;I)V

    return-void
.end method

.method public static canShow()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public static show(Landroid/app/Activity;Lcom/facebook/share/model/AppGroupCreationContent;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 97
    new-instance v0, Lcom/facebook/share/widget/CreateAppGroupDialog;

    invoke-direct {v0, p0}, Lcom/facebook/share/widget/CreateAppGroupDialog;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p1}, Lcom/facebook/share/widget/CreateAppGroupDialog;->show(Ljava/lang/Object;)V

    return-void
.end method

.method public static show(Landroid/app/Fragment;Lcom/facebook/share/model/AppGroupCreationContent;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 121
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p0}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/app/Fragment;)V

    invoke-static {v0, p1}, Lcom/facebook/share/widget/CreateAppGroupDialog;->show(Lcom/facebook/internal/FragmentWrapper;Lcom/facebook/share/model/AppGroupCreationContent;)V

    return-void
.end method

.method public static show(Landroid/support/v4/app/Fragment;Lcom/facebook/share/model/AppGroupCreationContent;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 109
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p0}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-static {v0, p1}, Lcom/facebook/share/widget/CreateAppGroupDialog;->show(Lcom/facebook/internal/FragmentWrapper;Lcom/facebook/share/model/AppGroupCreationContent;)V

    return-void
.end method

.method private static show(Lcom/facebook/internal/FragmentWrapper;Lcom/facebook/share/model/AppGroupCreationContent;)V
    .locals 1

    .line 127
    new-instance v0, Lcom/facebook/share/widget/CreateAppGroupDialog;

    invoke-direct {v0, p0}, Lcom/facebook/share/widget/CreateAppGroupDialog;-><init>(Lcom/facebook/internal/FragmentWrapper;)V

    invoke-virtual {v0, p1}, Lcom/facebook/share/widget/CreateAppGroupDialog;->show(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected createBaseAppCall()Lcom/facebook/internal/AppCall;
    .locals 2

    .line 193
    new-instance v0, Lcom/facebook/internal/AppCall;

    invoke-virtual {p0}, Lcom/facebook/share/widget/CreateAppGroupDialog;->getRequestCode()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/facebook/internal/AppCall;-><init>(I)V

    return-object v0
.end method

.method protected getOrderedModeHandlers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/internal/FacebookDialogBase<",
            "Lcom/facebook/share/model/AppGroupCreationContent;",
            "Lcom/facebook/share/widget/CreateAppGroupDialog$Result;",
            ">.ModeHandler;>;"
        }
    .end annotation

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 199
    new-instance v1, Lcom/facebook/share/widget/CreateAppGroupDialog$WebHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/facebook/share/widget/CreateAppGroupDialog$WebHandler;-><init>(Lcom/facebook/share/widget/CreateAppGroupDialog;Lcom/facebook/share/widget/CreateAppGroupDialog$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected registerCallbackImpl(Lcom/facebook/internal/CallbackManagerImpl;Lcom/facebook/FacebookCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/internal/CallbackManagerImpl;",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/share/widget/CreateAppGroupDialog$Result;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 168
    :cond_0
    new-instance v0, Lcom/facebook/share/widget/CreateAppGroupDialog$1;

    invoke-direct {v0, p0, p2, p2}, Lcom/facebook/share/widget/CreateAppGroupDialog$1;-><init>(Lcom/facebook/share/widget/CreateAppGroupDialog;Lcom/facebook/FacebookCallback;Lcom/facebook/FacebookCallback;)V

    move-object p2, v0

    .line 177
    :goto_0
    new-instance v0, Lcom/facebook/share/widget/CreateAppGroupDialog$2;

    invoke-direct {v0, p0, p2}, Lcom/facebook/share/widget/CreateAppGroupDialog$2;-><init>(Lcom/facebook/share/widget/CreateAppGroupDialog;Lcom/facebook/share/internal/ResultProcessor;)V

    .line 188
    invoke-virtual {p0}, Lcom/facebook/share/widget/CreateAppGroupDialog;->getRequestCode()I

    move-result p2

    invoke-virtual {p1, p2, v0}, Lcom/facebook/internal/CallbackManagerImpl;->registerCallback(ILcom/facebook/internal/CallbackManagerImpl$Callback;)V

    return-void
.end method
