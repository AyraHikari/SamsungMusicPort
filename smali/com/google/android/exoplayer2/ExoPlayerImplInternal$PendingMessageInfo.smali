.class final Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ExoPlayerImplInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PendingMessageInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/PlayerMessage;

.field public b:I

.field public c:J

.field public d:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/PlayerMessage;)V
    .locals 0

    .line 1651
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1652
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->a:Lcom/google/android/exoplayer2/PlayerMessage;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;)I
    .locals 4
    .param p1    # Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1663
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->d:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->d:Ljava/lang/Object;

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eq v0, v3, :cond_3

    .line 1665
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->d:Ljava/lang/Object;

    if-eqz p1, :cond_2

    const/4 v2, -0x1

    :cond_2
    return v2

    .line 1667
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->d:Ljava/lang/Object;

    if-nez v0, :cond_4

    return v1

    .line 1672
    :cond_4
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->b:I

    iget v1, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->b:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_5

    return v0

    .line 1676
    :cond_5
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->c:J

    iget-wide v2, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->c:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/util/Util;->b(JJ)I

    move-result p1

    return p1
.end method

.method public a(IJLjava/lang/Object;)V
    .locals 0

    .line 1656
    iput p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->b:I

    .line 1657
    iput-wide p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->c:J

    .line 1658
    iput-object p4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1643
    check-cast p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->a(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;)I

    move-result p1

    return p1
.end method
