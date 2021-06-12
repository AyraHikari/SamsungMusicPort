.class public Landroid/support/v7/widget/RecyclerView$RecycledViewPool;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecycledViewPool"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_SCRAP:I = 0x5


# instance fields
.field private mAttachCount:I

.field mScrap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7206
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 7208
    iput v0, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    return-void
.end method

.method private getScrapDataForType(I)Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;
    .locals 2

    .line 7365
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    if-nez v0, :cond_0

    .line 7367
    new-instance v0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;-><init>()V

    .line 7368
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method attach(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 0

    .line 7332
    iget p1, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    return-void
.end method

.method public clear()V
    .locals 3

    const/4 v0, 0x0

    .line 7214
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 7215
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    if-eqz v1, :cond_0

    .line 7218
    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    :cond_0
    const-string v1, "SeslRecyclerView"

    const-string v2, "clear() wasn\'t executed because RecycledViewPool.mScrap was invalid"

    .line 7220
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method detach()V
    .locals 1

    .line 7336
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    return-void
.end method

.method factorInBindTime(IJ)V
    .locals 2

    .line 7316
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object p1

    .line 7317
    iget-wide v0, p1, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mBindRunningAverageNs:J

    invoke-virtual {p0, v0, v1, p2, p3}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->runningAverage(JJ)J

    move-result-wide p2

    iput-wide p2, p1, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mBindRunningAverageNs:J

    return-void
.end method

.method factorInCreateTime(IJ)V
    .locals 2

    .line 7310
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object p1

    .line 7311
    iget-wide v0, p1, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mCreateRunningAverageNs:J

    invoke-virtual {p0, v0, v1, p2, p3}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->runningAverage(JJ)J

    move-result-wide p2

    iput-wide p2, p1, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mCreateRunningAverageNs:J

    return-void
.end method

.method public getRecycledView(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 7258
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    if-eqz p1, :cond_0

    .line 7259
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7260
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    .line 7261
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getRecycledViewCount(I)I
    .locals 0

    .line 7245
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object p1

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    return p1
.end method

.method onAdapterChanged(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView$Adapter;Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 7354
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->detach()V

    :cond_0
    if-nez p3, :cond_1

    .line 7356
    iget p1, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    if-nez p1, :cond_1

    .line 7357
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->clear()V

    :cond_1
    if-eqz p2, :cond_2

    .line 7360
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->attach(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    :cond_2
    return-void
.end method

.method public putRecycledView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 3

    .line 7290
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    .line 7291
    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object v1

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    .line 7292
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mMaxScrap:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v0, v2, :cond_0

    return-void

    .line 7298
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->resetInternal()V

    .line 7299
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method runningAverage(JJ)J
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    return-wide p3

    :cond_0
    const-wide/16 v0, 0x4

    .line 7306
    div-long/2addr p1, v0

    const-wide/16 v2, 0x3

    mul-long p1, p1, v2

    div-long/2addr p3, v0

    add-long/2addr p1, p3

    return-wide p1
.end method

.method public setMaxRecycledViews(II)V
    .locals 1

    .line 7233
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object p1

    .line 7234
    iput p2, p1, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mMaxScrap:I

    .line 7235
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    .line 7236
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 7237
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method size()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 7273
    :goto_0
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 7274
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 7276
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method willBindInTime(IJJ)Z
    .locals 4

    .line 7327
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object p1

    iget-wide v0, p1, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mBindRunningAverageNs:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    add-long/2addr p2, v0

    cmp-long p1, p2, p4

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method willCreateInTime(IJJ)Z
    .locals 4

    .line 7322
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object p1

    iget-wide v0, p1, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mCreateRunningAverageNs:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    add-long/2addr p2, v0

    cmp-long p1, p2, p4

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
