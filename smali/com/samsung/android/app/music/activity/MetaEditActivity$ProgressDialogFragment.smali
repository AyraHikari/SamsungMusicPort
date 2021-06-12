.class public Lcom/samsung/android/app/music/activity/MetaEditActivity$ProgressDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/activity/MetaEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgressDialogFragment"
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "MetaEditActivity$ProgressDialogFragment"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 604
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic a(I)Lcom/samsung/android/app/music/activity/MetaEditActivity$ProgressDialogFragment;
    .locals 0

    .line 604
    invoke-static {p0}, Lcom/samsung/android/app/music/activity/MetaEditActivity$ProgressDialogFragment;->b(I)Lcom/samsung/android/app/music/activity/MetaEditActivity$ProgressDialogFragment;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 604
    sget-object v0, Lcom/samsung/android/app/music/activity/MetaEditActivity$ProgressDialogFragment;->a:Ljava/lang/String;

    return-object v0
.end method

.method private static b(I)Lcom/samsung/android/app/music/activity/MetaEditActivity$ProgressDialogFragment;
    .locals 3
    .param p0    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 610
    new-instance v0, Lcom/samsung/android/app/music/activity/MetaEditActivity$ProgressDialogFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/activity/MetaEditActivity$ProgressDialogFragment;-><init>()V

    .line 611
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "progress_message"

    .line 612
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 613
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/activity/MetaEditActivity$ProgressDialogFragment;->setArguments(Landroid/os/Bundle;)V

    const/4 p0, 0x0

    .line 614
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/activity/MetaEditActivity$ProgressDialogFragment;->setCancelable(Z)V

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 621
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/MetaEditActivity$ProgressDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "progress_message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 622
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/MetaEditActivity$ProgressDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 623
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/activity/MetaEditActivity$ProgressDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-object v0
.end method
