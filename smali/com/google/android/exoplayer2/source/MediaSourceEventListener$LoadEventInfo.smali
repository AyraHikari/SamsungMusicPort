.class public final Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LoadEventInfo"
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field public final b:J

.field public final c:J

.field public final d:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSpec;JJJ)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;->a:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 59
    iput-wide p2, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;->b:J

    .line 60
    iput-wide p4, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;->c:J

    .line 61
    iput-wide p6, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;->d:J

    return-void
.end method
