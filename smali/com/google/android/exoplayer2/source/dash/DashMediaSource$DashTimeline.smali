.class final Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;
.super Lcom/google/android/exoplayer2/Timeline;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/DashMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DashTimeline"
.end annotation


# instance fields
.field private final b:J

.field private final c:J

.field private final d:I

.field private final e:J

.field private final f:J

.field private final g:J

.field private final h:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

.field private final i:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(JJIJJJLcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Ljava/lang/Object;)V
    .locals 0
    .param p13    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1036
    invoke-direct {p0}, Lcom/google/android/exoplayer2/Timeline;-><init>()V

    .line 1037
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->b:J

    .line 1038
    iput-wide p3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->c:J

    .line 1039
    iput p5, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->d:I

    .line 1040
    iput-wide p6, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->e:J

    .line 1041
    iput-wide p8, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->f:J

    .line 1042
    iput-wide p10, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->g:J

    .line 1043
    iput-object p12, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->h:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 1044
    iput-object p13, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->i:Ljava/lang/Object;

    return-void
.end method

.method private a(J)J
    .locals 8

    .line 1099
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->g:J

    .line 1100
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->h:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->d:Z

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_1

    add-long/2addr v0, p1

    .line 1105
    iget-wide p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->f:J

    cmp-long p1, v0, p1

    if-lez p1, :cond_1

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    return-wide p1

    .line 1112
    :cond_1
    iget-wide p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->e:J

    add-long/2addr p1, v0

    .line 1113
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->h:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->c(I)J

    move-result-wide v4

    move-wide v6, v4

    move-wide v4, p1

    const/4 p1, 0x0

    .line 1114
    :goto_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->h:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->a()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-ge p1, p2, :cond_2

    cmp-long p2, v4, v6

    if-ltz p2, :cond_2

    sub-long/2addr v4, v6

    add-int/lit8 p1, p1, 0x1

    .line 1118
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->h:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->c(I)J

    move-result-wide v6

    goto :goto_0

    .line 1120
    :cond_2
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->h:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 1121
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->a(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object p1

    const/4 p2, 0x2

    .line 1122
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->a(I)I

    move-result p2

    const/4 v2, -0x1

    if-ne p2, v2, :cond_3

    return-wide v0

    .line 1129
    :cond_3
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->c:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->c:Ljava/util/List;

    .line 1130
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->e()Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1131
    invoke-interface {p1, v6, v7}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->c(J)I

    move-result p2

    if-nez p2, :cond_4

    goto :goto_1

    .line 1135
    :cond_4
    invoke-interface {p1, v4, v5, v6, v7}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->a(JJ)J

    move-result-wide v2

    .line 1136
    invoke-interface {p1, v2, v3}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->a(J)J

    move-result-wide p1

    add-long/2addr v0, p1

    sub-long/2addr v0, v4

    return-wide v0

    :cond_5
    :goto_1
    return-wide v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 3

    .line 1090
    instance-of v0, p1, Ljava/lang/Integer;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 1093
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1094
    iget v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->d:I

    if-lt p1, v0, :cond_2

    iget v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->d:I

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->c()I

    move-result v2

    add-int/2addr v0, v2

    if-lt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->d:I

    sub-int v1, p1, v0

    :cond_2
    :goto_0
    return v1
.end method

.method public a(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;
    .locals 11

    .line 1054
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->h:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/google/android/exoplayer2/util/Assertions;->a(III)I

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 1055
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->h:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->a(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->a:Ljava/lang/String;

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object v4, v0

    :goto_0
    if-eqz p3, :cond_1

    .line 1056
    iget p3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->d:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->h:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 1057
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->a()I

    move-result v0

    invoke-static {p1, v1, v0}, Lcom/google/android/exoplayer2/util/Assertions;->a(III)I

    move-result v0

    add-int/2addr p3, v0

    .line 1056
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_1
    move-object v5, v0

    const/4 v6, 0x0

    .line 1058
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->h:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {p3, p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->c(I)J

    move-result-wide v7

    iget-object p3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->h:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 1059
    invoke-virtual {p3, p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->a(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object p1

    iget-wide v2, p1, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->b:J

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->h:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->a(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object p1

    iget-wide v0, p1, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->b:J

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/C;->b(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->e:J

    sub-long v9, v0, v2

    move-object v3, p2

    .line 1058
    invoke-virtual/range {v3 .. v10}, Lcom/google/android/exoplayer2/Timeline$Period;->a(Ljava/lang/Object;Ljava/lang/Object;IJJ)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object p1

    return-object p1
.end method

.method public a(ILcom/google/android/exoplayer2/Timeline$Window;ZJ)Lcom/google/android/exoplayer2/Timeline$Window;
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move/from16 v3, p1

    .line 1071
    invoke-static {v3, v2, v1}, Lcom/google/android/exoplayer2/util/Assertions;->a(III)I

    move-wide/from16 v2, p4

    .line 1072
    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->a(J)J

    move-result-wide v10

    if-eqz p3, :cond_0

    .line 1074
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->i:Ljava/lang/Object;

    :goto_0
    move-object v3, v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1075
    :goto_1
    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->b:J

    iget-wide v6, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->c:J

    const/4 v8, 0x1

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->h:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v9, v2, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->d:Z

    iget-wide v12, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->f:J

    const/4 v14, 0x0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->h:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 1084
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->a()I

    move-result v2

    add-int/lit8 v15, v2, -0x1

    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->e:J

    move-wide/from16 v16, v1

    move-object/from16 v2, p2

    .line 1075
    invoke-virtual/range {v2 .. v17}, Lcom/google/android/exoplayer2/Timeline$Window;->a(Ljava/lang/Object;JJZZJJIIJ)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v1

    return-object v1
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c()I
    .locals 1

    .line 1049
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->h:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->a()I

    move-result v0

    return v0
.end method
