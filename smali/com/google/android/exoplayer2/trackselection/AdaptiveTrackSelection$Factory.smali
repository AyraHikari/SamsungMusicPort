.class public final Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:F

.field private final f:F

.field private final g:J

.field private final h:Lcom/google/android/exoplayer2/util/Clock;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)V
    .locals 10

    .line 51
    sget-object v9, Lcom/google/android/exoplayer2/util/Clock;->a:Lcom/google/android/exoplayer2/util/Clock;

    const/16 v2, 0x2710

    const/16 v3, 0x61a8

    const/16 v4, 0x61a8

    const/high16 v5, 0x3f400000    # 0.75f

    const/high16 v6, 0x3f400000    # 0.75f

    const-wide/16 v7, 0x7d0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;IIIFFJLcom/google/android/exoplayer2/util/Clock;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;IIIFFJLcom/google/android/exoplayer2/util/Clock;)V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->a:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    .line 128
    iput p2, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->b:I

    .line 129
    iput p3, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->c:I

    .line 130
    iput p4, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->d:I

    .line 131
    iput p5, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->e:F

    .line 132
    iput p6, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->f:F

    .line 134
    iput-wide p7, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->g:J

    .line 135
    iput-object p9, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->h:Lcom/google/android/exoplayer2/util/Clock;

    return-void
.end method


# virtual methods
.method public varargs a(Lcom/google/android/exoplayer2/source/TrackGroup;[I)Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;
    .locals 17

    move-object/from16 v0, p0

    .line 140
    new-instance v16, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;

    iget-object v4, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->a:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    iget v1, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->b:I

    int-to-long v5, v1

    iget v1, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->c:I

    int-to-long v7, v1

    iget v1, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->d:I

    int-to-long v9, v1

    iget v11, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->e:F

    iget v12, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->f:F

    iget-wide v13, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->g:J

    iget-object v15, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->h:Lcom/google/android/exoplayer2/util/Clock;

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v15}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[ILcom/google/android/exoplayer2/upstream/BandwidthMeter;JJJFFJLcom/google/android/exoplayer2/util/Clock;)V

    return-object v16
.end method

.method public synthetic b(Lcom/google/android/exoplayer2/source/TrackGroup;[I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->a(Lcom/google/android/exoplayer2/source/TrackGroup;[I)Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;

    move-result-object p1

    return-object p1
.end method
