.class public Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field final mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/view/ViewPropertyAnimatorCompat;",
            ">;"
        }
    .end annotation
.end field

.field private mDuration:J

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsStarted:Z

.field mListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

.field private final mProxyListener:Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 41
    iput-wide v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mDuration:J

    .line 119
    new-instance v0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet$1;

    invoke-direct {v0, p0}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet$1;-><init>(Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;)V

    iput-object v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mProxyListener:Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 89
    iget-boolean v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    if-nez v0, :cond_0

    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 93
    invoke-virtual {v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 95
    iput-boolean v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    return-void
.end method

.method onAnimationsEnded()V
    .locals 1

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    return-void
.end method

.method public play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;
    .locals 1

    .line 52
    iget-boolean v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public playSequentially(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;
    .locals 2

    .line 60
    iget-object v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->getDuration()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 62
    iget-object p1, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setDuration(J)Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;
    .locals 1

    .line 99
    iget-boolean v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    if-nez v0, :cond_0

    .line 100
    iput-wide p1, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mDuration:J

    :cond_0
    return-object p0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;
    .locals 1

    .line 106
    iget-boolean v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    if-nez v0, :cond_0

    .line 107
    iput-object p1, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mInterpolator:Landroid/view/animation/Interpolator;

    :cond_0
    return-object p0
.end method

.method public setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;
    .locals 1

    .line 113
    iget-boolean v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    if-nez v0, :cond_0

    .line 114
    iput-object p1, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    :cond_0
    return-object p0
.end method

.method public start()V
    .locals 6

    .line 67
    iget-boolean v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    if-eqz v0, :cond_0

    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 69
    iget-wide v2, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mDuration:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 70
    iget-wide v2, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mDuration:J

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 72
    :cond_1
    iget-object v2, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v2, :cond_2

    .line 73
    iget-object v2, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 75
    :cond_2
    iget-object v2, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    if-eqz v2, :cond_3

    .line 76
    iget-object v2, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mProxyListener:Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 78
    :cond_3
    invoke-virtual {v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    return-void
.end method
