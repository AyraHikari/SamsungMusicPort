.class public Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$OnPrivateOperationListener;


# static fields
.field private static final a:Ljava/lang/String; = "PrivateMoveDialogFragment"


# instance fields
.field private b:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

.field private c:I

.field private d:Landroid/widget/ProgressBar;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    const/4 v0, -0x1

    .line 58
    iput v0, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->c:I

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->g:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;[JLjava/lang/String;Z)Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;
    .locals 3

    .line 83
    new-instance v0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;-><init>()V

    .line 84
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "list_items"

    .line 85
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    const-string v2, "is_folder"

    .line 86
    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "path"

    .line 87
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->setArguments(Landroid/os/Bundle;)V

    const/4 v1, 0x0

    .line 89
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->setCancelable(Z)V

    .line 90
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->b(Landroid/content/Context;[JLjava/lang/String;Z)V

    return-object v0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->g:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->b:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->b:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->a()V

    :cond_0
    return-void
.end method

.method private a(I)V
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->d:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->a()V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;)Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->g:Ljava/lang/String;

    return-object p0
.end method

.method private b(I)V
    .locals 4

    .line 274
    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->d:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 276
    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x64

    .line 278
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->d:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_1

    .line 279
    iget-object v1, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->e:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v3, p1, 0x64

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit8 v3, v0, 0x64

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->d:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_2

    .line 282
    iget-object v1, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->f:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    int-to-float p1, p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private b(Landroid/content/Context;[JLjava/lang/String;Z)V
    .locals 0

    .line 166
    invoke-static {p1}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->b:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    .line 167
    iget-object p1, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->b:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->a(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$OnPrivateOperationListener;)V

    .line 168
    iget-object p1, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->b:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    invoke-virtual {p1, p2, p3, p4}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->a([JLjava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 3

    const-string v0, "PrivateMode"

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStateChanged state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 203
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    .line 204
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 208
    :cond_0
    invoke-static {p2}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFileRenameDialog;->a(Ljava/lang/String;)Landroid/support/v4/app/DialogFragment;

    move-result-object p1

    .line 209
    invoke-virtual {p0}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    const-string v0, "privateRenameDialog"

    invoke-virtual {p1, p2, v0}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1

    .line 205
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->a()V

    goto :goto_1

    .line 212
    :pswitch_1
    iput-object p2, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->g:Ljava/lang/String;

    .line 213
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment$2;-><init>(Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 230
    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 231
    invoke-virtual {p0}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->dismissAllowingStateLoss()V

    goto :goto_1

    .line 235
    :cond_2
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment$3;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment$3;-><init>(Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(ILjava/lang/String;I)V
    .locals 3

    .line 252
    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 253
    sget-object p1, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->a:Ljava/lang/String;

    const-string p2, "onUpdateProgress() AbortMsg != null"

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p3, :cond_1

    .line 257
    sget-object v0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdateProgress() cnt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " curFilename:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " curPercent:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 261
    invoke-virtual {p2}, Landroid/app/Dialog;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_2

    mul-int/lit8 p1, p1, 0x64

    add-int/2addr p1, p3

    .line 262
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->b(I)V

    :cond_2
    return-void
.end method

.method public a(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    .line 287
    sget-object v0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->a:Ljava/lang/String;

    const-string v1, "show()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->a:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 194
    invoke-direct {p0}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->a()V

    .line 195
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9

    .line 96
    sget-object v0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->a:Ljava/lang/String;

    const-string v1, "onCreateDialog()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "list_items"

    .line 98
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v1

    const-string v2, "is_folder"

    .line 99
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "path"

    .line 100
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const-string p1, "PrivateMode"

    const-string v0, "PrivateMoveDialogFragment, listItems is null"

    .line 102
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 107
    invoke-virtual {p0}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 109
    new-instance v6, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v6, v4}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v7, "layout_inflater"

    .line 113
    invoke-virtual {v4, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    const v8, 0x7f0401d8

    .line 114
    invoke-virtual {v7, v8, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v7, 0x7f1303d0

    .line 116
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ProgressBar;

    iput-object v7, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->d:Landroid/widget/ProgressBar;

    const v7, 0x7f1304c7

    .line 117
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->e:Landroid/widget/TextView;

    const v7, 0x7f1304c6

    .line 118
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->f:Landroid/widget/TextView;

    .line 119
    invoke-virtual {v6, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 121
    invoke-virtual {v6}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    .line 124
    invoke-static {v4}, Lcom/samsung/android/app/music/library/framework/security/PrivateModeUtils;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const v0, 0x7f0b01a7

    .line 126
    invoke-virtual {v3, v0}, Landroid/support/v7/app/AlertDialog;->setTitle(I)V

    goto :goto_1

    :cond_2
    const v0, 0x7f0b01ac

    .line 128
    invoke-virtual {v3, v0}, Landroid/support/v7/app/AlertDialog;->setTitle(I)V

    .line 131
    :goto_1
    invoke-virtual {v3, v6}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 132
    invoke-virtual {v3, v6}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    const/4 v0, -0x2

    const v7, 0x7f0b00cd

    .line 133
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment$1;

    invoke-direct {v7, p0}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment$1;-><init>(Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;)V

    invoke-virtual {v3, v0, v5, v7}, Landroid/support/v7/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    if-eqz p1, :cond_3

    .line 144
    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->b:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    .line 145
    iget-object p1, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->b:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->a(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$OnPrivateOperationListener;)V

    :cond_3
    if-eqz v2, :cond_4

    .line 150
    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/samsung/android/app/music/privatemode/PrivateUtils;->a(Landroid/content/Context;[J)I

    move-result p1

    mul-int/lit8 p1, p1, 0x64

    .line 149
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->a(I)V

    goto :goto_2

    .line 153
    :cond_4
    array-length p1, v1

    mul-int/lit8 p1, p1, 0x64

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->a(I)V

    .line 156
    :goto_2
    invoke-static {}, Lcom/samsung/android/app/music/privatemode/PrivateUtils;->a()Z

    move-result p1

    if-eqz p1, :cond_5

    const/16 p1, 0x1000

    .line 157
    iput p1, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->c:I

    goto :goto_3

    .line 159
    :cond_5
    iput v6, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->c:I

    :goto_3
    return-object v3
.end method

.method public onStart()V
    .locals 2

    .line 173
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStart()V

    const-string v0, "PrivateMode"

    const-string v1, "onStart()"

    .line 174
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->b:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->b()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->b:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    .line 177
    invoke-virtual {v0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 183
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/privatemode/PrivateUtils;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1000

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->c:I

    .line 185
    iget v0, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->c:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->b:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    .line 186
    invoke-virtual {v0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->b()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->b:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    .line 187
    invoke-virtual {v0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->b()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 188
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    :cond_3
    return-void

    .line 178
    :cond_4
    :goto_1
    sget-object v0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->a:Ljava/lang/String;

    const-string v1, "onStart() : state changed cancelled or finished. Dialog will be dismissed"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method
