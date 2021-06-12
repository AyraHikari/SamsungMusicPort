.class public Landroid/support/v4/widget/ContentLoadingProgressBar;
.super Landroid/widget/ProgressBar;
.source "SourceFile"


# static fields
.field private static final MIN_DELAY:I = 0x1f4

.field private static final MIN_SHOW_TIME:I = 0x1f4


# instance fields
.field private final mDelayedHide:Ljava/lang/Runnable;

.field private final mDelayedShow:Ljava/lang/Runnable;

.field mDismissed:Z

.field mPostedHide:Z

.field mPostedShow:Z

.field mStartTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/ContentLoadingProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 p1, -0x1

    .line 36
    iput-wide p1, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mStartTime:J

    .line 38
    iput-boolean v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mPostedHide:Z

    .line 40
    iput-boolean v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mPostedShow:Z

    .line 42
    iput-boolean v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mDismissed:Z

    .line 44
    new-instance p1, Landroid/support/v4/widget/ContentLoadingProgressBar$1;

    invoke-direct {p1, p0}, Landroid/support/v4/widget/ContentLoadingProgressBar$1;-><init>(Landroid/support/v4/widget/ContentLoadingProgressBar;)V

    iput-object p1, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mDelayedHide:Ljava/lang/Runnable;

    .line 54
    new-instance p1, Landroid/support/v4/widget/ContentLoadingProgressBar$2;

    invoke-direct {p1, p0}, Landroid/support/v4/widget/ContentLoadingProgressBar$2;-><init>(Landroid/support/v4/widget/ContentLoadingProgressBar;)V

    iput-object p1, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mDelayedShow:Ljava/lang/Runnable;

    return-void
.end method

.method private removeCallbacks()V
    .locals 1

    .line 87
    iget-object v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mDelayedHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/ContentLoadingProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 88
    iget-object v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mDelayedShow:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/ContentLoadingProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 9

    const/4 v0, 0x1

    .line 97
    iput-boolean v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mDismissed:Z

    .line 98
    iget-object v1, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mDelayedShow:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/ContentLoadingProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mStartTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1f4

    cmp-long v5, v1, v3

    if-gez v5, :cond_1

    .line 100
    iget-wide v5, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mStartTime:J

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    iget-boolean v5, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mPostedHide:Z

    if-nez v5, :cond_2

    .line 110
    iget-object v5, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mDelayedHide:Ljava/lang/Runnable;

    sub-long/2addr v3, v1

    invoke-virtual {p0, v5, v3, v4}, Landroid/support/v4/widget/ContentLoadingProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 111
    iput-boolean v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mPostedHide:Z

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v0, 0x8

    .line 104
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/ContentLoadingProgressBar;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .line 76
    invoke-super {p0}, Landroid/widget/ProgressBar;->onAttachedToWindow()V

    .line 77
    invoke-direct {p0}, Landroid/support/v4/widget/ContentLoadingProgressBar;->removeCallbacks()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 82
    invoke-super {p0}, Landroid/widget/ProgressBar;->onDetachedFromWindow()V

    .line 83
    invoke-direct {p0}, Landroid/support/v4/widget/ContentLoadingProgressBar;->removeCallbacks()V

    return-void
.end method

.method public show()V
    .locals 3

    const-wide/16 v0, -0x1

    .line 122
    iput-wide v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mStartTime:J

    const/4 v0, 0x0

    .line 123
    iput-boolean v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mDismissed:Z

    .line 124
    iget-object v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mDelayedHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/ContentLoadingProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 125
    iget-boolean v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mPostedShow:Z

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mDelayedShow:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/widget/ContentLoadingProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    .line 127
    iput-boolean v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mPostedShow:Z

    :cond_0
    return-void
.end method
