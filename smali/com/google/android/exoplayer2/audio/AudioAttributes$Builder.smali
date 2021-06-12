.class public final Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/AudioAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->a:I

    .line 56
    iput v0, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->b:I

    const/4 v0, 0x1

    .line 57
    iput v0, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->c:I

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/exoplayer2/audio/AudioAttributes;
    .locals 5

    .line 88
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioAttributes;

    iget v1, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->a:I

    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->b:I

    iget v3, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->c:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/audio/AudioAttributes;-><init>(IIILcom/google/android/exoplayer2/audio/AudioAttributes$1;)V

    return-object v0
.end method
