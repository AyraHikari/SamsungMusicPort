.class public Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton;
.super Landroid/widget/Button;
.source "InclusiveDelayButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$b;,
        Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$c;
    }
.end annotation


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton;->a:Z

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton;->a:Z

    return p1
.end method


# virtual methods
.method public performClick()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton;->a:Z

    .line 3
    new-instance v0, Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$c;

    new-instance v1, Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$a;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$a;-><init>(Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$c;-><init>(Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$b;)V

    .line 4
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5
    invoke-super {p0}, Landroid/widget/Button;->performClick()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
