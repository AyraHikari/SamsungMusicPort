.class public final Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$Result;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field private final playlistId:J

.field private final resultCode:I


# direct methods
.method public constructor <init>(JI)V
    .locals 0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$Result;->playlistId:J

    iput p3, p0, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$Result;->resultCode:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$Result;JIILjava/lang/Object;)Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$Result;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-wide p1, p0, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$Result;->playlistId:J

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    iget p3, p0, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$Result;->resultCode:I

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$Result;->copy(JI)Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$Result;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$Result;->playlistId:J

    return-wide v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$Result;->resultCode:I

    return v0
.end method

.method public final copy(JI)Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$Result;
    .locals 1

    new-instance v0, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$Result;

    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$Result;-><init>(JI)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-eq p0, p1, :cond_3

    instance-of v1, p1, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$Result;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$Result;

    iget-wide v3, p0, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$Result;->playlistId:J

    iget-wide v5, p1, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$Result;->playlistId:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iget v1, p0, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$Result;->resultCode:I

    iget p1, p1, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$Result;->resultCode:I

    if-ne v1, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    return v2

    :cond_3
    :goto_2
    return v0
.end method

.method public final getPlaylistId()J
    .locals 2

    .line 190
    iget-wide v0, p0, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$Result;->playlistId:J

    return-wide v0
.end method

.method public final getResultCode()I
    .locals 1

    .line 190
    iget v0, p0, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$Result;->resultCode:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$Result;->playlistId:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$Result;->resultCode:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Result(playlistId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$Result;->playlistId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", resultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$Result;->resultCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
