.class public abstract Lcom/samsung/android/app/musiclibrary/ui/task/LoadingProgressTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field protected static final NO_NEED_TOAST:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "LoadingProgressTask"


# instance fields
.field protected final mActivity:Landroid/app/Activity;

.field protected final mContext:Landroid/content/Context;

.field protected mFinish:Z

.field private mLoadingProgress:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/task/LoadingProgressTask;->mFinish:Z

    .line 28
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/task/LoadingProgressTask;->mActivity:Landroid/app/Activity;

    .line 29
    iput-boolean p2, p0, Lcom/samsung/android/app/musiclibrary/ui/task/LoadingProgressTask;->mFinish:Z

    .line 30
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/task/LoadingProgressTask;->mContext:Landroid/content/Context;

    return-void
.end method

.method private hideLoading()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/task/LoadingProgressTask;->mLoadingProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/task/LoadingProgressTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/task/LoadingProgressTask;->mLoadingProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/task/LoadingProgressTask;->mLoadingProgress:Landroid/app/ProgressDialog;

    :cond_1
    return-void
.end method

.method private showMessage(Ljava/lang/String;)V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/task/LoadingProgressTask;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 66
    invoke-virtual {p1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/16 v1, 0x11

    .line 68
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 70
    :cond_0
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/task/LoadingProgressTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/task/LoadingProgressTask;->mLoadingProgress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 49
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/task/LoadingProgressTask;->hideLoading()V

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/task/LoadingProgressTask;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/task/LoadingProgressTask;->mFinish:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/task/LoadingProgressTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/task/LoadingProgressTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/task/LoadingProgressTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 57
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/task/LoadingProgressTask;->setMessage(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 59
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/task/LoadingProgressTask;->showMessage(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/task/LoadingProgressTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/task/LoadingProgressTask;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/task/LoadingProgressTask;->setLoadingProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    sget v0, Lcom/samsung/android/app/musiclibrary/R$string;->loading:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/task/LoadingProgressTask;->showLoading(I)V

    :cond_0
    return-void
.end method

.method protected abstract setLoadingProgress()Z
.end method

.method protected abstract setMessage(Ljava/lang/Integer;)Ljava/lang/String;
.end method

.method protected final showLoading(I)V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/task/LoadingProgressTask;->mLoadingProgress:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/task/LoadingProgressTask;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/task/LoadingProgressTask;->mLoadingProgress:Landroid/app/ProgressDialog;

    .line 76
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/task/LoadingProgressTask;->mLoadingProgress:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/task/LoadingProgressTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 77
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/task/LoadingProgressTask;->mLoadingProgress:Landroid/app/ProgressDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 79
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/task/LoadingProgressTask;->mLoadingProgress:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
