.class final Lcom/google/android/exoplayer2/text/SimpleSubtitleOutputBuffer;
.super Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;
.source "SourceFile"


# instance fields
.field private final c:Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/SimpleSubtitleOutputBuffer;->c:Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;

    return-void
.end method


# virtual methods
.method public final e()V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/SimpleSubtitleOutputBuffer;->c:Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;->a(Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;)V

    return-void
.end method
