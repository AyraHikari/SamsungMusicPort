.class public Lcom/devbrackets/android/exomedia/core/exoplayer/WindowInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:Lcom/google/android/exoplayer2/Timeline$Window;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIILcom/google/android/exoplayer2/Timeline$Window;)V
    .locals 0
    .param p4    # Lcom/google/android/exoplayer2/Timeline$Window;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/WindowInfo;->a:I

    .line 33
    iput p2, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/WindowInfo;->b:I

    .line 34
    iput p3, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/WindowInfo;->c:I

    .line 35
    iput-object p4, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/WindowInfo;->d:Lcom/google/android/exoplayer2/Timeline$Window;

    return-void
.end method
