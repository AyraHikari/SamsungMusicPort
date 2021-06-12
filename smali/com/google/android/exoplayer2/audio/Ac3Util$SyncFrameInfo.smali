.class public final Lcom/google/android/exoplayer2/audio/Ac3Util$SyncFrameInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/Ac3Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SyncFrameInfo"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I


# direct methods
.method private constructor <init>(Ljava/lang/String;IIIII)V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/Ac3Util$SyncFrameInfo;->a:Ljava/lang/String;

    .line 84
    iput p2, p0, Lcom/google/android/exoplayer2/audio/Ac3Util$SyncFrameInfo;->b:I

    .line 85
    iput p3, p0, Lcom/google/android/exoplayer2/audio/Ac3Util$SyncFrameInfo;->d:I

    .line 86
    iput p4, p0, Lcom/google/android/exoplayer2/audio/Ac3Util$SyncFrameInfo;->c:I

    .line 87
    iput p5, p0, Lcom/google/android/exoplayer2/audio/Ac3Util$SyncFrameInfo;->e:I

    .line 88
    iput p6, p0, Lcom/google/android/exoplayer2/audio/Ac3Util$SyncFrameInfo;->f:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIIIILcom/google/android/exoplayer2/audio/Ac3Util$1;)V
    .locals 0

    .line 34
    invoke-direct/range {p0 .. p6}, Lcom/google/android/exoplayer2/audio/Ac3Util$SyncFrameInfo;-><init>(Ljava/lang/String;IIIII)V

    return-void
.end method
