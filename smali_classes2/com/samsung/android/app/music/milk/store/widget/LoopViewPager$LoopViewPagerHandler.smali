.class Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$LoopViewPagerHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoopViewPagerHandler"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;)V
    .locals 1

    .line 290
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 291
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$LoopViewPagerHandler;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 296
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 298
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    .line 300
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$LoopViewPagerHandler;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 302
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->a(Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;I)V

    .line 303
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->a(Z)V

    :cond_1
    :goto_0
    return-void
.end method
