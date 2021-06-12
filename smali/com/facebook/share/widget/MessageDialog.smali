.class public final Lcom/facebook/share/widget/MessageDialog;
.super Lcom/facebook/internal/FacebookDialogBase;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/share/Sharer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/widget/MessageDialog$NativeHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/internal/FacebookDialogBase<",
        "Lcom/facebook/share/model/ShareContent;",
        "Lcom/facebook/share/Sharer$Result;",
        ">;",
        "Lcom/facebook/share/Sharer;"
    }
.end annotation


# static fields
.field private static final DEFAULT_REQUEST_CODE:I


# instance fields
.field private shouldFailOnDataError:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Message:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 70
    invoke-virtual {v0}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v0

    sput v0, Lcom/facebook/share/widget/MessageDialog;->DEFAULT_REQUEST_CODE:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 138
    sget v0, Lcom/facebook/share/widget/MessageDialog;->DEFAULT_REQUEST_CODE:I

    invoke-direct {p0, p1, v0}, Lcom/facebook/internal/FacebookDialogBase;-><init>(Landroid/app/Activity;I)V

    const/4 p1, 0x0

    .line 72
    iput-boolean p1, p0, Lcom/facebook/share/widget/MessageDialog;->shouldFailOnDataError:Z

    .line 140
    sget p1, Lcom/facebook/share/widget/MessageDialog;->DEFAULT_REQUEST_CODE:I

    invoke-static {p1}, Lcom/facebook/share/internal/ShareInternalUtility;->registerStaticShareCallback(I)V

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    .line 168
    invoke-direct {p0, p1, p2}, Lcom/facebook/internal/FacebookDialogBase;-><init>(Landroid/app/Activity;I)V

    const/4 p1, 0x0

    .line 72
    iput-boolean p1, p0, Lcom/facebook/share/widget/MessageDialog;->shouldFailOnDataError:Z

    .line 170
    invoke-static {p2}, Lcom/facebook/share/internal/ShareInternalUtility;->registerStaticShareCallback(I)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 1

    .line 157
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/app/Fragment;)V

    invoke-direct {p0, v0}, Lcom/facebook/share/widget/MessageDialog;-><init>(Lcom/facebook/internal/FragmentWrapper;)V

    return-void
.end method

.method constructor <init>(Landroid/app/Fragment;I)V
    .locals 1

    .line 180
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/app/Fragment;)V

    invoke-direct {p0, v0, p2}, Lcom/facebook/share/widget/MessageDialog;-><init>(Lcom/facebook/internal/FragmentWrapper;I)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 1

    .line 148
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-direct {p0, v0}, Lcom/facebook/share/widget/MessageDialog;-><init>(Lcom/facebook/internal/FragmentWrapper;)V

    return-void
.end method

.method constructor <init>(Landroid/support/v4/app/Fragment;I)V
    .locals 1

    .line 175
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-direct {p0, v0, p2}, Lcom/facebook/share/widget/MessageDialog;-><init>(Lcom/facebook/internal/FragmentWrapper;I)V

    return-void
.end method

.method private constructor <init>(Lcom/facebook/internal/FragmentWrapper;)V
    .locals 1

    .line 161
    sget v0, Lcom/facebook/share/widget/MessageDialog;->DEFAULT_REQUEST_CODE:I

    invoke-direct {p0, p1, v0}, Lcom/facebook/internal/FacebookDialogBase;-><init>(Lcom/facebook/internal/FragmentWrapper;I)V

    const/4 p1, 0x0

    .line 72
    iput-boolean p1, p0, Lcom/facebook/share/widget/MessageDialog;->shouldFailOnDataError:Z

    .line 163
    sget p1, Lcom/facebook/share/widget/MessageDialog;->DEFAULT_REQUEST_CODE:I

    invoke-static {p1}, Lcom/facebook/share/internal/ShareInternalUtility;->registerStaticShareCallback(I)V

    return-void
.end method

.method private constructor <init>(Lcom/facebook/internal/FragmentWrapper;I)V
    .locals 0

    .line 184
    invoke-direct {p0, p1, p2}, Lcom/facebook/internal/FacebookDialogBase;-><init>(Lcom/facebook/internal/FragmentWrapper;I)V

    const/4 p1, 0x0

    .line 72
    iput-boolean p1, p0, Lcom/facebook/share/widget/MessageDialog;->shouldFailOnDataError:Z

    .line 186
    invoke-static {p2}, Lcom/facebook/share/internal/ShareInternalUtility;->registerStaticShareCallback(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/share/widget/MessageDialog;)Landroid/app/Activity;
    .locals 0

    .line 65
    invoke-virtual {p0}, Lcom/facebook/share/widget/MessageDialog;->getActivityContext()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Landroid/content/Context;Lcom/facebook/share/model/ShareContent;Lcom/facebook/internal/AppCall;)V
    .locals 0

    .line 65
    invoke-static {p0, p1, p2}, Lcom/facebook/share/widget/MessageDialog;->logDialogShare(Landroid/content/Context;Lcom/facebook/share/model/ShareContent;Lcom/facebook/internal/AppCall;)V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/Class;)Lcom/facebook/internal/DialogFeature;
    .locals 0

    .line 65
    invoke-static {p0}, Lcom/facebook/share/widget/MessageDialog;->getFeature(Ljava/lang/Class;)Lcom/facebook/internal/DialogFeature;

    move-result-object p0

    return-object p0
.end method

.method public static canShow(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/facebook/share/model/ShareContent;",
            ">;)Z"
        }
    .end annotation

    .line 128
    invoke-static {p0}, Lcom/facebook/share/widget/MessageDialog;->getFeature(Ljava/lang/Class;)Lcom/facebook/internal/DialogFeature;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 130
    invoke-static {p0}, Lcom/facebook/internal/DialogPresenter;->canPresentNativeDialogWithFeature(Lcom/facebook/internal/DialogFeature;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static getFeature(Ljava/lang/Class;)Lcom/facebook/internal/DialogFeature;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/facebook/share/model/ShareContent;",
            ">;)",
            "Lcom/facebook/internal/DialogFeature;"
        }
    .end annotation

    .line 262
    const-class v0, Lcom/facebook/share/model/ShareLinkContent;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    sget-object p0, Lcom/facebook/share/internal/MessageDialogFeature;->MESSAGE_DIALOG:Lcom/facebook/share/internal/MessageDialogFeature;

    return-object p0

    .line 264
    :cond_0
    const-class v0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    sget-object p0, Lcom/facebook/share/internal/MessageDialogFeature;->MESSENGER_GENERIC_TEMPLATE:Lcom/facebook/share/internal/MessageDialogFeature;

    return-object p0

    .line 266
    :cond_1
    const-class v0, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 267
    sget-object p0, Lcom/facebook/share/internal/MessageDialogFeature;->MESSENGER_OPEN_GRAPH_MUSIC_TEMPLATE:Lcom/facebook/share/internal/MessageDialogFeature;

    return-object p0

    .line 268
    :cond_2
    const-class v0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 269
    sget-object p0, Lcom/facebook/share/internal/MessageDialogFeature;->MESSENGER_MEDIA_TEMPLATE:Lcom/facebook/share/internal/MessageDialogFeature;

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private static logDialogShare(Landroid/content/Context;Lcom/facebook/share/model/ShareContent;Lcom/facebook/internal/AppCall;)V
    .locals 3

    .line 276
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/share/widget/MessageDialog;->getFeature(Ljava/lang/Class;)Lcom/facebook/internal/DialogFeature;

    move-result-object v0

    .line 277
    sget-object v1, Lcom/facebook/share/internal/MessageDialogFeature;->MESSAGE_DIALOG:Lcom/facebook/share/internal/MessageDialogFeature;

    if-ne v0, v1, :cond_0

    const-string v0, "status"

    goto :goto_0

    .line 279
    :cond_0
    sget-object v1, Lcom/facebook/share/internal/MessageDialogFeature;->MESSENGER_GENERIC_TEMPLATE:Lcom/facebook/share/internal/MessageDialogFeature;

    if-ne v0, v1, :cond_1

    const-string v0, "GenericTemplate"

    goto :goto_0

    .line 281
    :cond_1
    sget-object v1, Lcom/facebook/share/internal/MessageDialogFeature;->MESSENGER_MEDIA_TEMPLATE:Lcom/facebook/share/internal/MessageDialogFeature;

    if-ne v0, v1, :cond_2

    const-string v0, "MediaTemplate"

    goto :goto_0

    .line 283
    :cond_2
    sget-object v1, Lcom/facebook/share/internal/MessageDialogFeature;->MESSENGER_OPEN_GRAPH_MUSIC_TEMPLATE:Lcom/facebook/share/internal/MessageDialogFeature;

    if-ne v0, v1, :cond_3

    const-string v0, "OpenGraphMusicTemplate"

    goto :goto_0

    :cond_3
    const-string v0, "unknown"

    .line 289
    :goto_0
    invoke-static {p0}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object p0

    .line 290
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "fb_share_dialog_content_type"

    .line 291
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "fb_share_dialog_content_uuid"

    .line 296
    invoke-virtual {p2}, Lcom/facebook/internal/AppCall;->getCallId()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    .line 294
    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "fb_share_dialog_content_page_id"

    .line 299
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareContent;->getPageId()Ljava/lang/String;

    move-result-object p1

    .line 297
    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "fb_messenger_share_dialog_show"

    const/4 p2, 0x0

    .line 301
    invoke-virtual {p0, p1, p2, v1}, Lcom/facebook/appevents/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    return-void
.end method

.method public static show(Landroid/app/Activity;Lcom/facebook/share/model/ShareContent;)V
    .locals 1

    .line 84
    new-instance v0, Lcom/facebook/share/widget/MessageDialog;

    invoke-direct {v0, p0}, Lcom/facebook/share/widget/MessageDialog;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p1}, Lcom/facebook/share/widget/MessageDialog;->show(Ljava/lang/Object;)V

    return-void
.end method

.method public static show(Landroid/app/Fragment;Lcom/facebook/share/model/ShareContent;)V
    .locals 1

    .line 110
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p0}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/app/Fragment;)V

    invoke-static {v0, p1}, Lcom/facebook/share/widget/MessageDialog;->show(Lcom/facebook/internal/FragmentWrapper;Lcom/facebook/share/model/ShareContent;)V

    return-void
.end method

.method public static show(Landroid/support/v4/app/Fragment;Lcom/facebook/share/model/ShareContent;)V
    .locals 1

    .line 97
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p0}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-static {v0, p1}, Lcom/facebook/share/widget/MessageDialog;->show(Lcom/facebook/internal/FragmentWrapper;Lcom/facebook/share/model/ShareContent;)V

    return-void
.end method

.method private static show(Lcom/facebook/internal/FragmentWrapper;Lcom/facebook/share/model/ShareContent;)V
    .locals 1

    .line 116
    new-instance v0, Lcom/facebook/share/widget/MessageDialog;

    invoke-direct {v0, p0}, Lcom/facebook/share/widget/MessageDialog;-><init>(Lcom/facebook/internal/FragmentWrapper;)V

    invoke-virtual {v0, p1}, Lcom/facebook/share/widget/MessageDialog;->show(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected createBaseAppCall()Lcom/facebook/internal/AppCall;
    .locals 2

    .line 208
    new-instance v0, Lcom/facebook/internal/AppCall;

    invoke-virtual {p0}, Lcom/facebook/share/widget/MessageDialog;->getRequestCode()I

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
            "Lcom/facebook/share/model/ShareContent;",
            "Lcom/facebook/share/Sharer$Result;",
            ">.ModeHandler;>;"
        }
    .end annotation

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 214
    new-instance v1, Lcom/facebook/share/widget/MessageDialog$NativeHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/facebook/share/widget/MessageDialog$NativeHandler;-><init>(Lcom/facebook/share/widget/MessageDialog;Lcom/facebook/share/widget/MessageDialog$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getShouldFailOnDataError()Z
    .locals 1

    .line 198
    iget-boolean v0, p0, Lcom/facebook/share/widget/MessageDialog;->shouldFailOnDataError:Z

    return v0
.end method

.method protected registerCallbackImpl(Lcom/facebook/internal/CallbackManagerImpl;Lcom/facebook/FacebookCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/internal/CallbackManagerImpl;",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;)V"
        }
    .end annotation

    .line 193
    invoke-virtual {p0}, Lcom/facebook/share/widget/MessageDialog;->getRequestCode()I

    move-result v0

    invoke-static {v0, p1, p2}, Lcom/facebook/share/internal/ShareInternalUtility;->registerSharerCallback(ILcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    return-void
.end method

.method public setShouldFailOnDataError(Z)V
    .locals 0

    .line 203
    iput-boolean p1, p0, Lcom/facebook/share/widget/MessageDialog;->shouldFailOnDataError:Z

    return-void
.end method
