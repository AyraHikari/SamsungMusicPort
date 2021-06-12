.class public Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton;
.super Landroid/widget/Button;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$IHandlerMessage;,
        Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$WeakRefHandler;
    }
.end annotation


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton;->a:Z

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton;Z)Z
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton;->a:Z

    return p1
.end method


# virtual methods
.method public performClick()Z
    .locals 4

    .line 24
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton;->a:Z

    .line 26
    new-instance v0, Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$WeakRefHandler;

    new-instance v1, Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$1;-><init>(Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$WeakRefHandler;-><init>(Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$IHandlerMessage;)V

    .line 33
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$WeakRefHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 34
    invoke-super {p0}, Landroid/widget/Button;->performClick()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
