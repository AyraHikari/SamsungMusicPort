.class final Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$PlaylistMemberInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PlaylistMemberInfo"
.end annotation


# instance fields
.field a:I

.field b:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 905
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 906
    iput p1, p0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$PlaylistMemberInfo;->a:I

    .line 907
    iput-object p2, p0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$PlaylistMemberInfo;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 916
    instance-of v0, p1, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$PlaylistMemberInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 919
    :cond_0
    check-cast p1, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$PlaylistMemberInfo;

    .line 920
    iget v0, p0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$PlaylistMemberInfo;->a:I

    iget v2, p1, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$PlaylistMemberInfo;->a:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$PlaylistMemberInfo;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$PlaylistMemberInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
