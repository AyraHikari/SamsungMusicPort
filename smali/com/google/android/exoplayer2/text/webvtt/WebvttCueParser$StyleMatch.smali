.class final Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StyleMatch"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;


# direct methods
.method public constructor <init>(ILcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;)V
    .locals 0

    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 481
    iput p1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;->a:I

    .line 482
    iput-object p2, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;->b:Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;)I
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 487
    iget v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;->a:I

    iget p1, p1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;->a:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 475
    check-cast p1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;->a(Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;)I

    move-result p1

    return p1
.end method
