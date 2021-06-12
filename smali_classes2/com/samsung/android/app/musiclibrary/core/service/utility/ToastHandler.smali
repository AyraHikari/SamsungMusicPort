.class public final Lcom/samsung/android/app/musiclibrary/core/service/utility/ToastHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 21
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/ToastHandler;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 27
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 28
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/ToastHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 33
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/ToastHandler;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/ToastHandler;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/ToastHandler;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/ToastHandler;->mToast:Landroid/widget/Toast;

    .line 37
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/ToastHandler;->mToast:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public showToast(I)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/ToastHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 1

    .line 53
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    .line 56
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/ToastHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/ToastHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
