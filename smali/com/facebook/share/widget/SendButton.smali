.class public final Lcom/facebook/share/widget/SendButton;
.super Lcom/facebook/share/widget/ShareButtonBase;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const-string v4, "fb_send_button_create"

    const-string v5, "fb_send_button_did_tap"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 39
    invoke-direct/range {v0 .. v5}, Lcom/facebook/share/widget/ShareButtonBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const-string v4, "fb_send_button_create"

    const-string v5, "fb_send_button_did_tap"

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 44
    invoke-direct/range {v0 .. v5}, Lcom/facebook/share/widget/ShareButtonBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const-string v4, "fb_send_button_create"

    const-string v5, "fb_send_button_did_tap"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 49
    invoke-direct/range {v0 .. v5}, Lcom/facebook/share/widget/ShareButtonBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getDefaultRequestCode()I
    .locals 1

    .line 64
    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Message:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    invoke-virtual {v0}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v0

    return v0
.end method

.method protected getDefaultStyleResource()I
    .locals 1

    .line 59
    sget v0, Lcom/facebook/share/R$style;->com_facebook_button_send:I

    return v0
.end method

.method protected getDialog()Lcom/facebook/internal/FacebookDialogBase;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/internal/FacebookDialogBase<",
            "Lcom/facebook/share/model/ShareContent;",
            "Lcom/facebook/share/Sharer$Result;",
            ">;"
        }
    .end annotation

    .line 70
    invoke-virtual {p0}, Lcom/facebook/share/widget/SendButton;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    new-instance v0, Lcom/facebook/share/widget/MessageDialog;

    invoke-virtual {p0}, Lcom/facebook/share/widget/SendButton;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/share/widget/SendButton;->getRequestCode()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/share/widget/MessageDialog;-><init>(Landroid/support/v4/app/Fragment;I)V

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/share/widget/SendButton;->getNativeFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 73
    new-instance v0, Lcom/facebook/share/widget/MessageDialog;

    invoke-virtual {p0}, Lcom/facebook/share/widget/SendButton;->getNativeFragment()Landroid/app/Fragment;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/share/widget/SendButton;->getRequestCode()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/share/widget/MessageDialog;-><init>(Landroid/app/Fragment;I)V

    goto :goto_0

    .line 75
    :cond_1
    new-instance v0, Lcom/facebook/share/widget/MessageDialog;

    invoke-virtual {p0}, Lcom/facebook/share/widget/SendButton;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/share/widget/SendButton;->getRequestCode()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/share/widget/MessageDialog;-><init>(Landroid/app/Activity;I)V

    :goto_0
    return-object v0
.end method
