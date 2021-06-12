.class public abstract Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/BaseDialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$BackgroundTask;
    }
.end annotation


# instance fields
.field private loadingProgress:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseDialogFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$getLoadingProgress$p(Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment;)Landroid/app/ProgressDialog;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment;->loadingProgress:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method public static final synthetic access$setLoadingProgress$p(Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment;Landroid/app/ProgressDialog;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment;->loadingProgress:Landroid/app/ProgressDialog;

    return-void
.end method

.method private final ensureInitLoadingProgress()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment;->loadingProgress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment;->loadingProgress:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 62
    :cond_1
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b018e

    .line 63
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 64
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 62
    iput-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment;->loadingProgress:Landroid/app/ProgressDialog;

    :cond_2
    return-void
.end method

.method public static synthetic startTask$default(Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment;Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$BackgroundTask;ZILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 22
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment;->startTask(Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$BackgroundTask;Z)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: startTask"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 43
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 44
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment;->setRetainInstance(Z)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment;->loadingProgress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 57
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseDialogFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 48
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseDialogFragment;->onResume()V

    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment;->loadingProgress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 50
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment;->ensureInitLoadingProgress()V

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment;->loadingProgress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_1
    return-void
.end method

.method protected final startTask(Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$BackgroundTask;Z)V
    .locals 6

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 24
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment;->ensureInitLoadingProgress()V

    .line 25
    iget-object p2, p0, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment;->loadingProgress:Landroid/app/ProgressDialog;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/app/ProgressDialog;->show()V

    .line 28
    :cond_0
    invoke-interface {p1}, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$BackgroundTask;->onPreExecute()V

    .line 29
    sget-object p2, Lkotlinx/coroutines/GlobalScope;->a:Lkotlinx/coroutines/GlobalScope;

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance p2, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$startTask$1;

    const/4 v3, 0x0

    invoke-direct {p2, p0, p1, v3}, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$startTask$1;-><init>(Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment;Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment$BackgroundTask;Lkotlin/coroutines/Continuation;)V

    move-object v3, p2

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
