.class final Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ExoPlayerImplInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PlaybackInfoUpdate"
.end annotation


# instance fields
.field private a:Lcom/google/android/exoplayer2/PlaybackInfo;

.field private b:I

.field private c:Z

.field private d:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1693
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$1;)V
    .locals 0

    .line 1693
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;)I
    .locals 0

    .line 1693
    iget p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->b:I

    return p0
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;)Z
    .locals 0

    .line 1693
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->c:Z

    return p0
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;)I
    .locals 0

    .line 1693
    iget p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->d:I

    return p0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 1711
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->b:I

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/PlaybackInfo;)Z
    .locals 1

    .line 1701
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->a:Lcom/google/android/exoplayer2/PlaybackInfo;

    if-ne p1, v0, :cond_1

    iget p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->b:I

    if-gtz p1, :cond_1

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->c:Z

    if-eqz p1, :cond_0

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

.method public b(I)V
    .locals 3

    .line 1715
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->c:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->d:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1719
    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->a(Z)V

    return-void

    .line 1722
    :cond_1
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->c:Z

    .line 1723
    iput p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->d:I

    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/PlaybackInfo;)V
    .locals 0

    .line 1705
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->a:Lcom/google/android/exoplayer2/PlaybackInfo;

    const/4 p1, 0x0

    .line 1706
    iput p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->b:I

    .line 1707
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->c:Z

    return-void
.end method
