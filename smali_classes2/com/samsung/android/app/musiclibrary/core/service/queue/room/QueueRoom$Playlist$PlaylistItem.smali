.class public final Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlaylistItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlaylistItem"
.end annotation


# instance fields
.field private id:J

.field private playlistId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 291
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlaylistItem;->playlistId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getId()J
    .locals 2

    .line 288
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlaylistItem;->id:J

    return-wide v0
.end method

.method public final getPlaylistId()Ljava/lang/String;
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlaylistItem;->playlistId:Ljava/lang/String;

    return-object v0
.end method

.method public final setId(J)V
    .locals 0

    .line 288
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlaylistItem;->id:J

    return-void
.end method

.method public final setPlaylistId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlaylistItem;->playlistId:Ljava/lang/String;

    return-void
.end method
