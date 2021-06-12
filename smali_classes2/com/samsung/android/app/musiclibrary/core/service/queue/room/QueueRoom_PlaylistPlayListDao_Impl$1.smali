.class Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_PlaylistPlayListDao_Impl$1;
.super Landroid/arch/persistence/room/EntityInsertionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_PlaylistPlayListDao_Impl;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/arch/persistence/room/EntityInsertionAdapter<",
        "Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlaylistItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_PlaylistPlayListDao_Impl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_PlaylistPlayListDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_PlaylistPlayListDao_Impl$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_PlaylistPlayListDao_Impl;

    invoke-direct {p0, p2}, Landroid/arch/persistence/room/EntityInsertionAdapter;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlaylistItem;)V
    .locals 3

    .line 34
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlaylistItem;->getId()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->a(IJ)V

    .line 35
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlaylistItem;->getPlaylistId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 36
    invoke-interface {p1, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->a(I)V

    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlaylistItem;->getPlaylistId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Landroid/arch/persistence/db/SupportSQLiteStatement;->a(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p2, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlaylistItem;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_PlaylistPlayListDao_Impl$1;->bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlaylistItem;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR IGNORE INTO `playlist`(`id`,`playlist_id`) VALUES (nullif(?, 0),?)"

    return-object v0
.end method
