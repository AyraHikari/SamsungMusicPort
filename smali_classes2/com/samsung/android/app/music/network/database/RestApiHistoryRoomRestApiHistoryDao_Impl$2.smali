.class Lcom/samsung/android/app/music/network/database/RestApiHistoryRoomRestApiHistoryDao_Impl$2;
.super Landroid/arch/persistence/room/SharedSQLiteStatement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/network/database/RestApiHistoryRoomRestApiHistoryDao_Impl;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/network/database/RestApiHistoryRoomRestApiHistoryDao_Impl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/network/database/RestApiHistoryRoomRestApiHistoryDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoomRestApiHistoryDao_Impl$2;->a:Lcom/samsung/android/app/music/network/database/RestApiHistoryRoomRestApiHistoryDao_Impl;

    invoke-direct {p0, p2}, Landroid/arch/persistence/room/SharedSQLiteStatement;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "delete from history where id = (select id from history limit 1) and (select count(id) from history) >= 10000"

    return-object v0
.end method
