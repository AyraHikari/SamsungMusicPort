.class Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_PlaylistPlayListDao_Impl$2;
.super Landroid/arch/persistence/room/SharedSQLiteStatement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_PlaylistPlayListDao_Impl;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_PlaylistPlayListDao_Impl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_PlaylistPlayListDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_PlaylistPlayListDao_Impl$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom_PlaylistPlayListDao_Impl;

    invoke-direct {p0, p2}, Landroid/arch/persistence/room/SharedSQLiteStatement;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM playlist"

    return-object v0
.end method
