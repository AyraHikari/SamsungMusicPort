.class public Landroid/support/v4/content/Loader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/Loader$OnLoadCanceledListener;,
        Landroid/support/v4/content/Loader$OnLoadCompleteListener;,
        Landroid/support/v4/content/Loader$ForceLoadContentObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mAbandoned:Z

.field mContentChanged:Z

.field mContext:Landroid/content/Context;

.field mId:I

.field mListener:Landroid/support/v4/content/Loader$OnLoadCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/Loader$OnLoadCompleteListener<",
            "TD;>;"
        }
    .end annotation
.end field

.field mOnLoadCanceledListener:Landroid/support/v4/content/Loader$OnLoadCanceledListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/Loader$OnLoadCanceledListener<",
            "TD;>;"
        }
    .end annotation
.end field

.field mProcessingChange:Z

.field mReset:Z

.field mStarted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mStarted:Z

    .line 42
    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mAbandoned:Z

    const/4 v1, 0x1

    .line 43
    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->mReset:Z

    .line 44
    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mContentChanged:Z

    .line 45
    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mProcessingChange:Z

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/content/Loader;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abandon()V
    .locals 1

    const/4 v0, 0x1

    .line 388
    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mAbandoned:Z

    .line 389
    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->onAbandon()V

    return-void
.end method

.method public cancelLoad()Z
    .locals 1

    .line 305
    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->onCancelLoad()Z

    move-result v0

    return v0
.end method

.method public commitContentChanged()V
    .locals 1

    const/4 v0, 0x0

    .line 460
    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mProcessingChange:Z

    return-void
.end method

.method public dataToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 502
    invoke-static {p1, v0}, Landroid/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string p1, "}"

    .line 503
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public deliverCancellation()V
    .locals 1

    .line 139
    iget-object v0, p0, Landroid/support/v4/content/Loader;->mOnLoadCanceledListener:Landroid/support/v4/content/Loader$OnLoadCanceledListener;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Landroid/support/v4/content/Loader;->mOnLoadCanceledListener:Landroid/support/v4/content/Loader$OnLoadCanceledListener;

    invoke-interface {v0, p0}, Landroid/support/v4/content/Loader$OnLoadCanceledListener;->onLoadCanceled(Landroid/support/v4/content/Loader;)V

    :cond_0
    return-void
.end method

.method public deliverResult(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Landroid/support/v4/content/Loader;->mListener:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Landroid/support/v4/content/Loader;->mListener:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/content/Loader$OnLoadCompleteListener;->onLoadComplete(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 526
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mId="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Landroid/support/v4/content/Loader;->mId:I

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, " mListener="

    .line 527
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/support/v4/content/Loader;->mListener:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 528
    iget-boolean p2, p0, Landroid/support/v4/content/Loader;->mStarted:Z

    if-nez p2, :cond_0

    iget-boolean p2, p0, Landroid/support/v4/content/Loader;->mContentChanged:Z

    if-nez p2, :cond_0

    iget-boolean p2, p0, Landroid/support/v4/content/Loader;->mProcessingChange:Z

    if-eqz p2, :cond_1

    .line 529
    :cond_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mStarted="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroid/support/v4/content/Loader;->mStarted:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mContentChanged="

    .line 530
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroid/support/v4/content/Loader;->mContentChanged:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mProcessingChange="

    .line 531
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroid/support/v4/content/Loader;->mProcessingChange:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 533
    :cond_1
    iget-boolean p2, p0, Landroid/support/v4/content/Loader;->mAbandoned:Z

    if-nez p2, :cond_2

    iget-boolean p2, p0, Landroid/support/v4/content/Loader;->mReset:Z

    if-eqz p2, :cond_3

    .line 534
    :cond_2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mAbandoned="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Landroid/support/v4/content/Loader;->mAbandoned:Z

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Z)V

    const-string p1, " mReset="

    .line 535
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Landroid/support/v4/content/Loader;->mReset:Z

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Z)V

    :cond_3
    return-void
.end method

.method public forceLoad()V
    .locals 0

    .line 332
    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->onForceLoad()V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 149
    iget-object v0, p0, Landroid/support/v4/content/Loader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 156
    iget v0, p0, Landroid/support/v4/content/Loader;->mId:I

    return v0
.end method

.method public isAbandoned()Z
    .locals 1

    .line 238
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mAbandoned:Z

    return v0
.end method

.method public isReset()Z
    .locals 1

    .line 247
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mReset:Z

    return v0
.end method

.method public isStarted()Z
    .locals 1

    .line 229
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mStarted:Z

    return v0
.end method

.method protected onAbandon()V
    .locals 0

    return-void
.end method

.method protected onCancelLoad()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onContentChanged()V
    .locals 1

    .line 485
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mStarted:Z

    if-eqz v0, :cond_0

    .line 486
    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->forceLoad()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 491
    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mContentChanged:Z

    :goto_0
    return-void
.end method

.method protected onForceLoad()V
    .locals 0

    return-void
.end method

.method protected onReset()V
    .locals 0

    return-void
.end method

.method protected onStartLoading()V
    .locals 0

    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    return-void
.end method

.method public registerListener(ILandroid/support/v4/content/Loader$OnLoadCompleteListener;)V
    .locals 1
    .param p2    # Landroid/support/v4/content/Loader$OnLoadCompleteListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/support/v4/content/Loader$OnLoadCompleteListener<",
            "TD;>;)V"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Landroid/support/v4/content/Loader;->mListener:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    if-nez v0, :cond_0

    .line 170
    iput-object p2, p0, Landroid/support/v4/content/Loader;->mListener:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    .line 171
    iput p1, p0, Landroid/support/v4/content/Loader;->mId:I

    return-void

    .line 168
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "There is already a listener registered"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public registerOnLoadCanceledListener(Landroid/support/v4/content/Loader$OnLoadCanceledListener;)V
    .locals 1
    .param p1    # Landroid/support/v4/content/Loader$OnLoadCanceledListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader$OnLoadCanceledListener<",
            "TD;>;)V"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Landroid/support/v4/content/Loader;->mOnLoadCanceledListener:Landroid/support/v4/content/Loader$OnLoadCanceledListener;

    if-nez v0, :cond_0

    .line 202
    iput-object p1, p0, Landroid/support/v4/content/Loader;->mOnLoadCanceledListener:Landroid/support/v4/content/Loader$OnLoadCanceledListener;

    return-void

    .line 200
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "There is already a listener registered"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .locals 1

    .line 423
    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->onReset()V

    const/4 v0, 0x1

    .line 424
    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mReset:Z

    const/4 v0, 0x0

    .line 425
    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mStarted:Z

    .line 426
    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mAbandoned:Z

    .line 427
    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mContentChanged:Z

    .line 428
    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mProcessingChange:Z

    return-void
.end method

.method public rollbackContentChanged()V
    .locals 1

    .line 471
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mProcessingChange:Z

    if-eqz v0, :cond_0

    .line 472
    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->onContentChanged()V

    :cond_0
    return-void
.end method

.method public final startLoading()V
    .locals 1

    const/4 v0, 0x1

    .line 272
    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mStarted:Z

    const/4 v0, 0x0

    .line 273
    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mReset:Z

    .line 274
    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mAbandoned:Z

    .line 275
    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->onStartLoading()V

    return-void
.end method

.method public stopLoading()V
    .locals 1

    const/4 v0, 0x0

    .line 363
    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mStarted:Z

    .line 364
    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->onStopLoading()V

    return-void
.end method

.method public takeContentChanged()Z
    .locals 2

    .line 446
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mContentChanged:Z

    const/4 v1, 0x0

    .line 447
    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->mContentChanged:Z

    .line 448
    iget-boolean v1, p0, Landroid/support/v4/content/Loader;->mProcessingChange:Z

    or-int/2addr v1, v0

    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->mProcessingChange:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 510
    invoke-static {p0, v0}, Landroid/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, " id="

    .line 511
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    iget v1, p0, Landroid/support/v4/content/Loader;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 513
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregisterListener(Landroid/support/v4/content/Loader$OnLoadCompleteListener;)V
    .locals 1
    .param p1    # Landroid/support/v4/content/Loader$OnLoadCompleteListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader$OnLoadCompleteListener<",
            "TD;>;)V"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Landroid/support/v4/content/Loader;->mListener:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Landroid/support/v4/content/Loader;->mListener:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 186
    iput-object p1, p0, Landroid/support/v4/content/Loader;->mListener:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    return-void

    .line 184
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Attempting to unregister the wrong listener"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 181
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No listener register"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unregisterOnLoadCanceledListener(Landroid/support/v4/content/Loader$OnLoadCanceledListener;)V
    .locals 1
    .param p1    # Landroid/support/v4/content/Loader$OnLoadCanceledListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader$OnLoadCanceledListener<",
            "TD;>;)V"
        }
    .end annotation

    .line 214
    iget-object v0, p0, Landroid/support/v4/content/Loader;->mOnLoadCanceledListener:Landroid/support/v4/content/Loader$OnLoadCanceledListener;

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Landroid/support/v4/content/Loader;->mOnLoadCanceledListener:Landroid/support/v4/content/Loader$OnLoadCanceledListener;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 220
    iput-object p1, p0, Landroid/support/v4/content/Loader;->mOnLoadCanceledListener:Landroid/support/v4/content/Loader$OnLoadCanceledListener;

    return-void

    .line 218
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Attempting to unregister the wrong listener"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 215
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No listener register"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
