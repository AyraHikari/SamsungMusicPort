.class public final Lcom/samsung/android/app/music/dialog/player/PlayerBottomDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# instance fields
.field private a:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static a(Landroid/os/Bundle;I)Landroid/support/v4/app/DialogFragment;
    .locals 1

    const-string v0, "args_cp_attrs"

    .line 41
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 42
    new-instance p1, Lcom/samsung/android/app/music/dialog/player/PlayerBottomDialogFragment;

    invoke-direct {p1}, Lcom/samsung/android/app/music/dialog/player/PlayerBottomDialogFragment;-><init>()V

    .line 43
    invoke-virtual {p1, p0}, Landroid/support/v4/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p1
.end method

.method private a(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;)Landroid/view/View;
    .locals 3

    const-string v0, "layout_inflater"

    .line 88
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 89
    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;->getLayout()I

    move-result v0

    if-gtz v0, :cond_0

    const v0, 0x7f040013

    :cond_0
    const/4 v1, 0x0

    .line 95
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f13014a

    .line 96
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 98
    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    :cond_1
    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;->getPositiveText()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const v2, 0x7f13014b

    .line 103
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 104
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    new-instance v0, Lcom/samsung/android/app/music/dialog/player/PlayerBottomDialogFragment$1;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/app/music/dialog/player/PlayerBottomDialogFragment$1;-><init>(Lcom/samsung/android/app/music/dialog/player/PlayerBottomDialogFragment;Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    :cond_2
    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;->getNegativeText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const v0, 0x7f130147

    .line 118
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 119
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 120
    new-instance v2, Lcom/samsung/android/app/music/dialog/player/PlayerBottomDialogFragment$2;

    invoke-direct {v2, p0, p2}, Lcom/samsung/android/app/music/dialog/player/PlayerBottomDialogFragment$2;-><init>(Lcom/samsung/android/app/music/dialog/player/PlayerBottomDialogFragment;Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    :cond_3
    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;->getIcon()I

    move-result p2

    if-lez p2, :cond_4

    const v0, 0x7f130149

    .line 132
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 133
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 134
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    return-object p1
.end method

.method private a()V
    .locals 5

    .line 140
    invoke-virtual {p0}, Lcom/samsung/android/app/music/dialog/player/PlayerBottomDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "SMUSIC-PlayerDialog"

    const-string v1, "PlayerBottomDialogFragment: resizingDialog dialog is null"

    .line 142
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/dialog/player/PlayerBottomDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 146
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1005be

    .line 147
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f100358

    .line 148
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 149
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "SMUSIC-PlayerDialog"

    const-string v1, "PlayerBottomDialogFragment: resizingDialog window is null"

    .line 151
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 154
    :cond_1
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    const/16 v4, 0x50

    .line 155
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    sub-int/2addr v2, v1

    .line 156
    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 157
    invoke-virtual {v0, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 158
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public static a(IILjava/lang/String;Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Z)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p5, :cond_0

    .line 50
    invoke-virtual {p3, p4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p5

    check-cast p5, Landroid/support/v4/app/DialogFragment;

    if-eqz p5, :cond_0

    .line 51
    invoke-virtual {p5}, Landroid/support/v4/app/DialogFragment;->getShowsDialog()Z

    move-result p5

    if-eqz p5, :cond_0

    return-void

    .line 55
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/service/metadata/uri/PlayerMessageFactory;->a(IILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 56
    invoke-static {p1, p0}, Lcom/samsung/android/app/music/dialog/player/PlayerBottomDialogFragment;->a(Landroid/os/Bundle;I)Landroid/support/v4/app/DialogFragment;

    move-result-object p0

    invoke-virtual {p0, p3, p4}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    const-string p1, "PlayerDialog"

    const-string v0, "PlayerBottomDialogFragment: onCancel"

    .line 82
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object p1, p0, Lcom/samsung/android/app/music/dialog/player/PlayerBottomDialogFragment;->a:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;->cancel()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 61
    invoke-virtual {p0}, Lcom/samsung/android/app/music/dialog/player/PlayerBottomDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    .line 62
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 63
    invoke-virtual {p0}, Lcom/samsung/android/app/music/dialog/player/PlayerBottomDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "args_cp_attrs"

    .line 65
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2, p1, v1}, Lcom/samsung/android/app/music/service/metadata/uri/PlayerMessageFactory;->a(ILandroid/app/Activity;Landroid/os/Bundle;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/dialog/player/PlayerBottomDialogFragment;->a:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;

    .line 66
    iget-object v1, p0, Lcom/samsung/android/app/music/dialog/player/PlayerBottomDialogFragment;->a:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/app/music/dialog/player/PlayerBottomDialogFragment;->a(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;)Landroid/view/View;

    move-result-object p1

    .line 67
    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 68
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    .line 69
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->create()V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/samsung/android/app/music/dialog/player/PlayerBottomDialogFragment;->a()V

    .line 77
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/DialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
