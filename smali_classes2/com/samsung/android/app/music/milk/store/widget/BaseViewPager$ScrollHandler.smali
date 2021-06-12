.class public Lcom/samsung/android/app/music/milk/store/widget/BaseViewPager$ScrollHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/widget/BaseViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScrollHandler"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/app/music/milk/store/widget/BaseViewPager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/milk/store/widget/BaseViewPager;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 83
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/BaseViewPager$ScrollHandler;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private a()Lcom/samsung/android/app/music/milk/store/widget/BaseViewPager;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/BaseViewPager$ScrollHandler;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/BaseViewPager;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 88
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 90
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/widget/BaseViewPager$ScrollHandler;->removeMessages(I)V

    .line 93
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-lez p1, :cond_1

    .line 95
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/BaseViewPager$ScrollHandler;->a()Lcom/samsung/android/app/music/milk/store/widget/BaseViewPager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/widget/BaseViewPager;->a()V

    goto :goto_0

    :cond_1
    if-gez p1, :cond_2

    .line 97
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/BaseViewPager$ScrollHandler;->a()Lcom/samsung/android/app/music/milk/store/widget/BaseViewPager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/widget/BaseViewPager;->b()V

    :cond_2
    :goto_0
    return-void
.end method
