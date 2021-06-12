.class public final Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$CommentHeader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CommentHeader"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:[Ljava/lang/String;

.field public final c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 0

    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 436
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$CommentHeader;->a:Ljava/lang/String;

    .line 437
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$CommentHeader;->b:[Ljava/lang/String;

    .line 438
    iput p3, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$CommentHeader;->c:I

    return-void
.end method
