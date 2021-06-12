.class public final Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/SeekMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/SeekMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Unseekable"
.end annotation


# instance fields
.field private final a:J

.field private final b:Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;


# direct methods
.method public constructor <init>(J)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;-><init>(JJ)V

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;->a:J

    .line 47
    new-instance p1, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    const-wide/16 v0, 0x0

    cmp-long p2, p3, v0

    if-nez p2, :cond_0

    sget-object p2, Lcom/google/android/exoplayer2/extractor/SeekPoint;->a:Lcom/google/android/exoplayer2/extractor/SeekPoint;

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    invoke-direct {p2, v0, v1, p3, p4}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    :goto_0
    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;->b:Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()J
    .locals 2

    .line 58
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;->a:J

    return-wide v0
.end method

.method public b(J)Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;
    .locals 0

    .line 63
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;->b:Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    return-object p1
.end method
