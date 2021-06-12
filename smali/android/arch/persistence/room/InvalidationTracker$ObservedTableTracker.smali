.class Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/persistence/room/InvalidationTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ObservedTableTracker"
.end annotation


# instance fields
.field final a:[J

.field final b:[Z

.field final c:[I

.field d:Z

.field e:Z


# direct methods
.method constructor <init>(I)V
    .locals 2

    .line 583
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 584
    new-array v0, p1, [J

    iput-object v0, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->a:[J

    .line 585
    new-array v0, p1, [Z

    iput-object v0, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->b:[Z

    .line 586
    new-array p1, p1, [I

    iput-object p1, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->c:[I

    .line 587
    iget-object p1, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->a:[J

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    .line 588
    iget-object p1, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->b:[Z

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([ZZ)V

    return-void
.end method


# virtual methods
.method a()[I
    .locals 9
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 635
    monitor-enter p0

    .line 636
    :try_start_0
    iget-boolean v0, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->d:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->e:Z

    if-eqz v0, :cond_0

    goto :goto_4

    .line 639
    :cond_0
    iget-object v0, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->a:[J

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_4

    .line 641
    iget-object v4, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->a:[J

    aget-wide v5, v4, v2

    const-wide/16 v7, 0x0

    cmp-long v4, v5, v7

    if-lez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 642
    :goto_1
    iget-object v5, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->b:[Z

    aget-boolean v5, v5, v2

    if-eq v4, v5, :cond_3

    .line 643
    iget-object v5, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->c:[I

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x2

    :goto_2
    aput v3, v5, v2

    goto :goto_3

    .line 645
    :cond_3
    iget-object v3, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->c:[I

    aput v1, v3, v2

    .line 647
    :goto_3
    iget-object v3, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->b:[Z

    aput-boolean v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 649
    :cond_4
    iput-boolean v3, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->e:Z

    .line 650
    iput-boolean v1, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->d:Z

    .line 651
    iget-object v0, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->c:[I

    monitor-exit p0

    return-object v0

    :cond_5
    :goto_4
    const/4 v0, 0x0

    .line 637
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 652
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method b()V
    .locals 1

    .line 660
    monitor-enter p0

    const/4 v0, 0x0

    .line 661
    :try_start_0
    iput-boolean v0, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->e:Z

    .line 662
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
