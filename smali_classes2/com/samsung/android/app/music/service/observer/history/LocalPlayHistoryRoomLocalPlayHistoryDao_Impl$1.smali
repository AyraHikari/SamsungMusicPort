.class Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoomLocalPlayHistoryDao_Impl$1;
.super Landroid/arch/persistence/room/EntityInsertionAdapter;
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
        "Landroid/arch/persistence/room/EntityInsertionAdapter<",
        "Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$History;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoomLocalPlayHistoryDao_Impl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoomLocalPlayHistoryDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoomLocalPlayHistoryDao_Impl$1;->a:Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoomLocalPlayHistoryDao_Impl;

    invoke-direct {p0, p2}, Landroid/arch/persistence/room/EntityInsertionAdapter;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/arch/persistence/db/SupportSQLiteStatement;Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$History;)V
    .locals 3

    .line 36
    iget-wide v0, p2, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$History;->a:J

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->a(IJ)V

    .line 37
    iget v0, p2, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$History;->b:I

    int-to-long v0, v0

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->a(IJ)V

    .line 38
    iget-object v0, p2, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$History;->c:Ljava/lang/String;

    const/4 v1, 0x3

    if-nez v0, :cond_0

    .line 39
    invoke-interface {p1, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->a(I)V

    goto :goto_0

    .line 41
    :cond_0
    iget-object v0, p2, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$History;->c:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->a(ILjava/lang/String;)V

    .line 43
    :goto_0
    iget-object v0, p2, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$History;->d:Ljava/lang/String;

    const/4 v1, 0x4

    if-nez v0, :cond_1

    .line 44
    invoke-interface {p1, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->a(I)V

    goto :goto_1

    .line 46
    :cond_1
    iget-object v0, p2, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$History;->d:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->a(ILjava/lang/String;)V

    .line 48
    :goto_1
    iget-object v0, p2, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$History;->e:Ljava/lang/String;

    const/4 v1, 0x5

    if-nez v0, :cond_2

    .line 49
    invoke-interface {p1, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->a(I)V

    goto :goto_2

    .line 51
    :cond_2
    iget-object v0, p2, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$History;->e:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->a(ILjava/lang/String;)V

    .line 53
    :goto_2
    iget-object v0, p2, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$History;->f:Ljava/lang/String;

    const/4 v1, 0x6

    if-nez v0, :cond_3

    .line 54
    invoke-interface {p1, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->a(I)V

    goto :goto_3

    .line 56
    :cond_3
    iget-object p2, p2, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$History;->f:Ljava/lang/String;

    invoke-interface {p1, v1, p2}, Landroid/arch/persistence/db/SupportSQLiteStatement;->a(ILjava/lang/String;)V

    :goto_3
    return-void
.end method

.method public synthetic bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p2, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$History;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoomLocalPlayHistoryDao_Impl$1;->a(Landroid/arch/persistence/db/SupportSQLiteStatement;Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$History;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `local_play_history`(`start_time`,`play_length`,`title`,`artist`,`album`,`duration`) VALUES (?,?,?,?,?,?)"

    return-object v0
.end method
