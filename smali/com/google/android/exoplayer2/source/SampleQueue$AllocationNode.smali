.class final Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/SampleQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AllocationNode"
.end annotation


# instance fields
.field public final a:J

.field public final b:J

.field public c:Z

.field public d:Lcom/google/android/exoplayer2/upstream/Allocation;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public e:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(JI)V
    .locals 2

    .line 689
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 690
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->a:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    .line 691
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->b:J

    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 2

    .line 714
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->a:J

    sub-long/2addr p1, v0

    long-to-int p1, p1

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->d:Lcom/google/android/exoplayer2/upstream/Allocation;

    iget p2, p2, Lcom/google/android/exoplayer2/upstream/Allocation;->b:I

    add-int/2addr p1, p2

    return p1
.end method

.method public a()Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;
    .locals 2

    const/4 v0, 0x0

    .line 723
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->d:Lcom/google/android/exoplayer2/upstream/Allocation;

    .line 724
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->e:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    .line 725
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->e:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    return-object v1
.end method

.method public a(Lcom/google/android/exoplayer2/upstream/Allocation;Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;)V
    .locals 0

    .line 701
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->d:Lcom/google/android/exoplayer2/upstream/Allocation;

    .line 702
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->e:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    const/4 p1, 0x1

    .line 703
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->c:Z

    return-void
.end method
