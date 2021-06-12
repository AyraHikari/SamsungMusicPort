.class final Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl$Result;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Result"
.end annotation


# instance fields
.field private final isSynced:Z

.field private final resultCode:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl$Result;->resultCode:I

    iput-boolean p2, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl$Result;->isSynced:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl$Result;IZILjava/lang/Object;)Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl$Result;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl$Result;->resultCode:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-boolean p2, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl$Result;->isSynced:Z

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl$Result;->copy(IZ)Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl$Result;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl$Result;->resultCode:I

    return v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl$Result;->isSynced:Z

    return v0
.end method

.method public final copy(IZ)Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl$Result;
    .locals 1

    new-instance v0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl$Result;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl$Result;-><init>(IZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_3

    instance-of v1, p1, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl$Result;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl$Result;

    iget v1, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl$Result;->resultCode:I

    iget v3, p1, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl$Result;->resultCode:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl$Result;->isSynced:Z

    iget-boolean p1, p1, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl$Result;->isSynced:Z

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

.method public final getResultCode()I
    .locals 1

    .line 269
    iget v0, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl$Result;->resultCode:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl$Result;->resultCode:I

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl$Result;->isSynced:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final isSynced()Z
    .locals 1

    .line 269
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl$Result;->isSynced:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Result(resultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl$Result;->resultCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isSynced="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl$Result;->isSynced:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
