.class final Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$getIdOfPlaylist$comparator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->getIdOfPlaylist(Ljava/util/List;)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlaylistItem;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$getIdOfPlaylist$comparator$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$getIdOfPlaylist$comparator$1;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$getIdOfPlaylist$comparator$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$getIdOfPlaylist$comparator$1;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$getIdOfPlaylist$comparator$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlaylistItem;Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlaylistItem;)I
    .locals 0

    .line 439
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlaylistItem;->getPlaylistId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlaylistItem;->getPlaylistId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 41
    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlaylistItem;

    check-cast p2, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlaylistItem;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$getIdOfPlaylist$comparator$1;->compare(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlaylistItem;Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlaylistItem;)I

    move-result p1

    return p1
.end method
