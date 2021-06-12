.class Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoomLocalPlayHistoryDao_Impl$2;
.super Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoomLocalPlayHistoryDao_Impl;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter<",
        "Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$History;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoomLocalPlayHistoryDao_Impl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoomLocalPlayHistoryDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoomLocalPlayHistoryDao_Impl$2;->a:Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoomLocalPlayHistoryDao_Impl;

    invoke-direct {p0, p2}, Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/arch/persistence/db/SupportSQLiteStatement;Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$History;)V
    .locals 2

    .line 68
    iget-wide v0, p2, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$History;->a:J

    const/4 p2, 0x1

    invoke-interface {p1, p2, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->a(IJ)V

    return-void
.end method

.method public synthetic bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 60
    check-cast p2, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$History;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoomLocalPlayHistoryDao_Impl$2;->a(Landroid/arch/persistence/db/SupportSQLiteStatement;Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$History;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM `local_play_history` WHERE `start_time` = ?"

    return-object v0
.end method
