.class final Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MetadataSampleInfo"
.end annotation


# instance fields
.field public final a:J

.field public final b:I


# direct methods
.method public constructor <init>(JI)V
    .locals 0

    .line 1359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1360
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->a:J

    .line 1361
    iput p3, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->b:I

    return-void
.end method
