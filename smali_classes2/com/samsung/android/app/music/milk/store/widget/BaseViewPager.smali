.class public Lcom/samsung/android/app/music/milk/store/widget/BaseViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/widget/BaseViewPager$ScrollHandler;
    }
.end annotation


# instance fields
.field private a:Lcom/samsung/android/app/music/milk/store/widget/BaseViewPager$ScrollHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/milk/store/widget/BaseViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    new-instance p1, Lcom/samsung/android/app/music/milk/store/widget/BaseViewPager$ScrollHandler;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/milk/store/widget/BaseViewPager$ScrollHandler;-><init>(Lcom/samsung/android/app/music/milk/store/widget/BaseViewPager;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/BaseViewPager;->a:Lcom/samsung/android/app/music/milk/store/widget/BaseViewPager$ScrollHandler;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 72
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 74
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v0, 0x2

    .line 50
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->isFromSource(Landroid/view/MotionEvent;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    .line 53
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 54
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x1

    .line 55
    iput v2, v1, Landroid/os/Message;->what:I

    float-to-int v3, v0

    .line 56
    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 57
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/BaseViewPager;->a:Lcom/samsung/android/app/music/milk/store/widget/BaseViewPager$ScrollHandler;

    const-wide/16 v4, 0x190

    invoke-virtual {v3, v1, v4, v5}, Lcom/samsung/android/app/music/milk/store/widget/BaseViewPager$ScrollHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string v1, "BaseViewPager"

    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onGenericMotionEvent : event - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", hScroll - "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 58
    invoke-static {v1, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 64
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
