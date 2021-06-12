.class Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView$BackgroundUpdateHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackgroundUpdateHandler"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;Landroid/os/Looper;)V
    .locals 0

    .line 206
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 207
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView$BackgroundUpdateHandler;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    const/4 v0, 0x1

    .line 230
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView$BackgroundUpdateHandler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 231
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView$BackgroundUpdateHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method a(I)V
    .locals 2

    int-to-long v0, p1

    const/4 p1, 0x0

    .line 240
    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView$BackgroundUpdateHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method b()V
    .locals 1

    const/4 v0, 0x0

    .line 235
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView$BackgroundUpdateHandler;->removeMessages(I)V

    const/4 v0, 0x1

    .line 236
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView$BackgroundUpdateHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method b(I)V
    .locals 2

    int-to-long v0, p1

    const/4 p1, 0x1

    .line 244
    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView$BackgroundUpdateHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method c()V
    .locals 1

    const/4 v0, 0x0

    .line 248
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView$BackgroundUpdateHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView$BackgroundUpdateHandler;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;

    .line 213
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eqz v0, :cond_0

    .line 221
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->b(Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;)V

    goto :goto_0

    :pswitch_1
    if-eqz v0, :cond_0

    .line 216
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
