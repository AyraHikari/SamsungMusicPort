.class public final Lcom/google/android/exoplayer2/Timeline$Period;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/Timeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Period"
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:I

.field public d:J

.field private e:J

.field private f:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)I
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->f:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->d:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    aget-object p1, v0, p1

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->a(I)I

    move-result p1

    return p1
.end method

.method public a(J)I
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->f:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->a(J)I

    move-result p1

    return p1
.end method

.method public a()J
    .locals 2

    .line 349
    iget-wide v0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->d:J

    return-wide v0
.end method

.method public a(I)J
    .locals 3

    .line 385
    iget-object v0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->f:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->c:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;IJJ)Lcom/google/android/exoplayer2/Timeline$Period;
    .locals 9

    .line 304
    sget-object v8, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->a:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    move-wide v6, p6

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/exoplayer2/Timeline$Period;->a(Ljava/lang/Object;Ljava/lang/Object;IJJLcom/google/android/exoplayer2/source/ads/AdPlaybackState;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;IJJLcom/google/android/exoplayer2/source/ads/AdPlaybackState;)Lcom/google/android/exoplayer2/Timeline$Period;
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/google/android/exoplayer2/Timeline$Period;->a:Ljava/lang/Object;

    .line 330
    iput-object p2, p0, Lcom/google/android/exoplayer2/Timeline$Period;->b:Ljava/lang/Object;

    .line 331
    iput p3, p0, Lcom/google/android/exoplayer2/Timeline$Period;->c:I

    .line 332
    iput-wide p4, p0, Lcom/google/android/exoplayer2/Timeline$Period;->d:J

    .line 333
    iput-wide p6, p0, Lcom/google/android/exoplayer2/Timeline$Period;->e:J

    .line 334
    iput-object p8, p0, Lcom/google/android/exoplayer2/Timeline$Period;->f:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    return-object p0
.end method

.method public b(I)I
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->f:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->d:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->a()I

    move-result p1

    return p1
.end method

.method public b(J)I
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->f:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->b(J)I

    move-result p1

    return p1
.end method

.method public b()J
    .locals 2

    .line 358
    iget-wide v0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->e:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/C;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(II)Z
    .locals 2

    .line 466
    iget-object v0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->f:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->d:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    aget-object p1, v0, p1

    .line 467
    iget v0, p1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->c:[I

    aget p1, p1, p2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c()J
    .locals 2

    .line 367
    iget-wide v0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->e:J

    return-wide v0
.end method

.method public c(II)J
    .locals 2

    .line 480
    iget-object v0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->f:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->d:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    aget-object p1, v0, p1

    .line 481
    iget v0, p1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->d:[J

    aget-wide v0, p1, p2

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    return-wide v0
.end method

.method public c(I)Z
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->f:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->d:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->b()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public d()I
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->f:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget v0, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->b:I

    return v0
.end method

.method public d(I)I
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->f:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->d:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    aget-object p1, v0, p1

    iget p1, p1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->a:I

    return p1
.end method

.method public e()J
    .locals 2

    .line 489
    iget-object v0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->f:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->e:J

    return-wide v0
.end method
