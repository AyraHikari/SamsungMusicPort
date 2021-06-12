.class final Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection$DecreasingBandwidthComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DecreasingBandwidthComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/android/exoplayer2/Format;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection$1;)V
    .locals 0

    .line 200
    invoke-direct {p0}, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection$DecreasingBandwidthComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)I
    .locals 0

    .line 204
    iget p2, p2, Lcom/google/android/exoplayer2/Format;->b:I

    iget p1, p1, Lcom/google/android/exoplayer2/Format;->b:I

    sub-int/2addr p2, p1

    return p2
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 200
    check-cast p1, Lcom/google/android/exoplayer2/Format;

    check-cast p2, Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection$DecreasingBandwidthComparator;->a(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)I

    move-result p1

    return p1
.end method
