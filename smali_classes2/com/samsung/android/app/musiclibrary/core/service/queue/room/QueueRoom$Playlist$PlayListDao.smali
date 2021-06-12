.class public interface abstract Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlayListDao;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PlayListDao"
.end annotation


# virtual methods
.method public abstract clear()I
.end method

.method public abstract getAllItems()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlaylistItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPlaylist(J)Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlaylistItem;
.end method

.method public abstract getPlaylist(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlaylistItem;
.end method

.method public abstract insert(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlaylistItem;)J
.end method

.method public abstract insert(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlaylistItem;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method
