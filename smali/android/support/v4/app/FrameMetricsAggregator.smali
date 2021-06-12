.class public Landroid/support/v4/app/FrameMetricsAggregator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;,
        Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsBaseImpl;,
        Landroid/support/v4/app/FrameMetricsAggregator$MetricType;
    }
.end annotation


# static fields
.field public static final ANIMATION_DURATION:I = 0x100

.field public static final ANIMATION_INDEX:I = 0x8

.field public static final COMMAND_DURATION:I = 0x20

.field public static final COMMAND_INDEX:I = 0x5

.field private static final DBG:Z = false

.field public static final DELAY_DURATION:I = 0x80

.field public static final DELAY_INDEX:I = 0x7

.field public static final DRAW_DURATION:I = 0x8

.field public static final DRAW_INDEX:I = 0x3

.field public static final EVERY_DURATION:I = 0x1ff

.field public static final INPUT_DURATION:I = 0x2

.field public static final INPUT_INDEX:I = 0x1

.field private static final LAST_INDEX:I = 0x8

.field public static final LAYOUT_MEASURE_DURATION:I = 0x4

.field public static final LAYOUT_MEASURE_INDEX:I = 0x2

.field public static final SWAP_DURATION:I = 0x40

.field public static final SWAP_INDEX:I = 0x6

.field public static final SYNC_DURATION:I = 0x10

.field public static final SYNC_INDEX:I = 0x4

.field private static final TAG:Ljava/lang/String; = "FrameMetrics"

.field public static final TOTAL_DURATION:I = 0x1

.field public static final TOTAL_INDEX:I


# instance fields
.field private mInstance:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsBaseImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 201
    invoke-direct {p0, v0}, Landroid/support/v4/app/FrameMetricsAggregator;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 216
    new-instance v0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    invoke-direct {v0, p1}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/app/FrameMetricsAggregator;->mInstance:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsBaseImpl;

    goto :goto_0

    .line 218
    :cond_0
    new-instance p1, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsBaseImpl;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsBaseImpl;-><init>(Landroid/support/v4/app/FrameMetricsAggregator$1;)V

    iput-object p1, p0, Landroid/support/v4/app/FrameMetricsAggregator;->mInstance:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsBaseImpl;

    :goto_0
    return-void
.end method


# virtual methods
.method public add(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 228
    iget-object v0, p0, Landroid/support/v4/app/FrameMetricsAggregator;->mInstance:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsBaseImpl;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsBaseImpl;->add(Landroid/app/Activity;)V

    return-void
.end method

.method public getMetrics()[Landroid/util/SparseIntArray;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 303
    iget-object v0, p0, Landroid/support/v4/app/FrameMetricsAggregator;->mInstance:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsBaseImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsBaseImpl;->getMetrics()[Landroid/util/SparseIntArray;

    move-result-object v0

    return-object v0
.end method

.method public remove(Landroid/app/Activity;)[Landroid/util/SparseIntArray;
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 245
    iget-object v0, p0, Landroid/support/v4/app/FrameMetricsAggregator;->mInstance:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsBaseImpl;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsBaseImpl;->remove(Landroid/app/Activity;)[Landroid/util/SparseIntArray;

    move-result-object p1

    return-object p1
.end method

.method public reset()[Landroid/util/SparseIntArray;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 275
    iget-object v0, p0, Landroid/support/v4/app/FrameMetricsAggregator;->mInstance:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsBaseImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsBaseImpl;->reset()[Landroid/util/SparseIntArray;

    move-result-object v0

    return-object v0
.end method

.method public stop()[Landroid/util/SparseIntArray;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 262
    iget-object v0, p0, Landroid/support/v4/app/FrameMetricsAggregator;->mInstance:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsBaseImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsBaseImpl;->stop()[Landroid/util/SparseIntArray;

    move-result-object v0

    return-object v0
.end method
