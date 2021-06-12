.class public final Lcom/facebook/share/widget/DeviceShareButton;
.super Lcom/facebook/FacebookButtonBase;
.source "SourceFile"


# instance fields
.field private dialog:Lcom/facebook/share/DeviceShareDialog;

.field private enabledExplicitlySet:Z

.field private requestCode:I

.field private shareContent:Lcom/facebook/share/model/ShareContent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/share/widget/DeviceShareButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/share/widget/DeviceShareButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const-string v5, "fb_device_share_button_create"

    const-string v6, "fb_device_share_button_did_tap"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 67
    invoke-direct/range {v0 .. v6}, Lcom/facebook/FacebookButtonBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 44
    iput p1, p0, Lcom/facebook/share/widget/DeviceShareButton;->requestCode:I

    .line 45
    iput-boolean p1, p0, Lcom/facebook/share/widget/DeviceShareButton;->enabledExplicitlySet:Z

    const/4 p2, 0x0

    .line 46
    iput-object p2, p0, Lcom/facebook/share/widget/DeviceShareButton;->dialog:Lcom/facebook/share/DeviceShareDialog;

    .line 74
    invoke-virtual {p0}, Lcom/facebook/share/widget/DeviceShareButton;->isInEditMode()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/share/widget/DeviceShareButton;->getDefaultRequestCode()I

    move-result p2

    :goto_0
    iput p2, p0, Lcom/facebook/share/widget/DeviceShareButton;->requestCode:I

    .line 75
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/DeviceShareButton;->internalSetEnabled(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/share/widget/DeviceShareButton;Landroid/view/View;)V
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/facebook/share/widget/DeviceShareButton;->callExternalOnClickListener(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/share/widget/DeviceShareButton;)Lcom/facebook/share/DeviceShareDialog;
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/facebook/share/widget/DeviceShareButton;->getDialog()Lcom/facebook/share/DeviceShareDialog;

    move-result-object p0

    return-object p0
.end method

.method private canShare()Z
    .locals 2

    .line 188
    new-instance v0, Lcom/facebook/share/DeviceShareDialog;

    invoke-virtual {p0}, Lcom/facebook/share/widget/DeviceShareButton;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/share/DeviceShareDialog;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/facebook/share/widget/DeviceShareButton;->getShareContent()Lcom/facebook/share/model/ShareContent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/DeviceShareDialog;->canShow(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private getDialog()Lcom/facebook/share/DeviceShareDialog;
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/facebook/share/widget/DeviceShareButton;->dialog:Lcom/facebook/share/DeviceShareDialog;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/facebook/share/widget/DeviceShareButton;->dialog:Lcom/facebook/share/DeviceShareDialog;

    return-object v0

    .line 195
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/share/widget/DeviceShareButton;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 196
    new-instance v0, Lcom/facebook/share/DeviceShareDialog;

    invoke-virtual {p0}, Lcom/facebook/share/widget/DeviceShareButton;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/share/DeviceShareDialog;-><init>(Landroid/support/v4/app/Fragment;)V

    iput-object v0, p0, Lcom/facebook/share/widget/DeviceShareButton;->dialog:Lcom/facebook/share/DeviceShareDialog;

    goto :goto_0

    .line 197
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/share/widget/DeviceShareButton;->getNativeFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 198
    new-instance v0, Lcom/facebook/share/DeviceShareDialog;

    invoke-virtual {p0}, Lcom/facebook/share/widget/DeviceShareButton;->getNativeFragment()Landroid/app/Fragment;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/share/DeviceShareDialog;-><init>(Landroid/app/Fragment;)V

    iput-object v0, p0, Lcom/facebook/share/widget/DeviceShareButton;->dialog:Lcom/facebook/share/DeviceShareDialog;

    goto :goto_0

    .line 200
    :cond_2
    new-instance v0, Lcom/facebook/share/DeviceShareDialog;

    invoke-virtual {p0}, Lcom/facebook/share/widget/DeviceShareButton;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/share/DeviceShareDialog;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/facebook/share/widget/DeviceShareButton;->dialog:Lcom/facebook/share/DeviceShareDialog;

    .line 202
    :goto_0
    iget-object v0, p0, Lcom/facebook/share/widget/DeviceShareButton;->dialog:Lcom/facebook/share/DeviceShareDialog;

    return-object v0
.end method

.method private internalSetEnabled(Z)V
    .locals 0

    .line 175
    invoke-virtual {p0, p1}, Lcom/facebook/share/widget/DeviceShareButton;->setEnabled(Z)V

    const/4 p1, 0x0

    .line 176
    iput-boolean p1, p0, Lcom/facebook/share/widget/DeviceShareButton;->enabledExplicitlySet:Z

    return-void
.end method

.method private setRequestCode(I)V
    .locals 3

    .line 180
    invoke-static {p1}, Lcom/facebook/FacebookSdk;->isFacebookRequestCode(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    iput p1, p0, Lcom/facebook/share/widget/DeviceShareButton;->requestCode:I

    return-void

    .line 181
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " cannot be within the range reserved by the Facebook SDK."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected configureButton(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 150
    invoke-super {p0, p1, p2, p3, p4}, Lcom/facebook/FacebookButtonBase;->configureButton(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 151
    invoke-virtual {p0}, Lcom/facebook/share/widget/DeviceShareButton;->getShareOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/facebook/share/widget/DeviceShareButton;->setInternalOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected getDefaultRequestCode()I
    .locals 1

    .line 161
    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Share:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    invoke-virtual {v0}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v0

    return v0
.end method

.method protected getDefaultStyleResource()I
    .locals 1

    .line 156
    sget v0, Lcom/facebook/share/R$style;->com_facebook_button_share:I

    return v0
.end method

.method public getRequestCode()I
    .locals 1

    .line 104
    iget v0, p0, Lcom/facebook/share/widget/DeviceShareButton;->requestCode:I

    return v0
.end method

.method public getShareContent()Lcom/facebook/share/model/ShareContent;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/facebook/share/widget/DeviceShareButton;->shareContent:Lcom/facebook/share/model/ShareContent;

    return-object v0
.end method

.method protected getShareOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 165
    new-instance v0, Lcom/facebook/share/widget/DeviceShareButton$1;

    invoke-direct {v0, p0}, Lcom/facebook/share/widget/DeviceShareButton$1;-><init>(Lcom/facebook/share/widget/DeviceShareButton;)V

    return-object v0
.end method

.method public registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/CallbackManager;",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/share/DeviceShareDialog$Result;",
            ">;)V"
        }
    .end annotation

    .line 120
    invoke-direct {p0}, Lcom/facebook/share/widget/DeviceShareButton;->getDialog()Lcom/facebook/share/DeviceShareDialog;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/share/DeviceShareDialog;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    return-void
.end method

.method public registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/CallbackManager;",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/share/DeviceShareDialog$Result;",
            ">;I)V"
        }
    .end annotation

    .line 140
    invoke-direct {p0, p3}, Lcom/facebook/share/widget/DeviceShareButton;->setRequestCode(I)V

    .line 141
    invoke-direct {p0}, Lcom/facebook/share/widget/DeviceShareButton;->getDialog()Lcom/facebook/share/DeviceShareDialog;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/share/DeviceShareDialog;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;I)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 99
    invoke-super {p0, p1}, Lcom/facebook/FacebookButtonBase;->setEnabled(Z)V

    const/4 p1, 0x1

    .line 100
    iput-boolean p1, p0, Lcom/facebook/share/widget/DeviceShareButton;->enabledExplicitlySet:Z

    return-void
.end method

.method public setShareContent(Lcom/facebook/share/model/ShareContent;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/facebook/share/widget/DeviceShareButton;->shareContent:Lcom/facebook/share/model/ShareContent;

    .line 92
    iget-boolean p1, p0, Lcom/facebook/share/widget/DeviceShareButton;->enabledExplicitlySet:Z

    if-nez p1, :cond_0

    .line 93
    invoke-direct {p0}, Lcom/facebook/share/widget/DeviceShareButton;->canShare()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/facebook/share/widget/DeviceShareButton;->internalSetEnabled(Z)V

    :cond_0
    return-void
.end method
