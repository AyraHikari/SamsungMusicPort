.class Lcom/samsung/android/app/music/network/database/RestApiHistoryRoomRestApiHistoryDao_Impl$1;
.super Landroid/arch/persistence/room/EntityInsertionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/network/database/RestApiHistoryRoomRestApiHistoryDao_Impl;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/arch/persistence/room/EntityInsertionAdapter<",
        "Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom$RestApiHistory;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/network/database/RestApiHistoryRoomRestApiHistoryDao_Impl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/network/database/RestApiHistoryRoomRestApiHistoryDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoomRestApiHistoryDao_Impl$1;->a:Lcom/samsung/android/app/music/network/database/RestApiHistoryRoomRestApiHistoryDao_Impl;

    invoke-direct {p0, p2}, Landroid/arch/persistence/room/EntityInsertionAdapter;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/arch/persistence/db/SupportSQLiteStatement;Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom$RestApiHistory;)V
    .locals 3

    .line 29
    iget-wide v0, p2, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom$RestApiHistory;->a:J

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->a(IJ)V

    .line 30
    iget-object v0, p2, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom$RestApiHistory;->b:Ljava/lang/String;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 31
    invoke-interface {p1, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->a(I)V

    goto :goto_0

    .line 33
    :cond_0
    iget-object v0, p2, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom$RestApiHistory;->b:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->a(ILjava/lang/String;)V

    .line 35
    :goto_0
    iget-object v0, p2, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom$RestApiHistory;->c:Ljava/lang/String;

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 36
    invoke-interface {p1, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->a(I)V

    goto :goto_1

    .line 38
    :cond_1
    iget-object v0, p2, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom$RestApiHistory;->c:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->a(ILjava/lang/String;)V

    .line 40
    :goto_1
    iget-object v0, p2, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom$RestApiHistory;->d:Ljava/lang/String;

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 41
    invoke-interface {p1, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->a(I)V

    goto :goto_2

    .line 43
    :cond_2
    iget-object p2, p2, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom$RestApiHistory;->d:Ljava/lang/String;

    invoke-interface {p1, v1, p2}, Landroid/arch/persistence/db/SupportSQLiteStatement;->a(ILjava/lang/String;)V

    :goto_2
    return-void
.end method

.method public synthetic bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p2, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom$RestApiHistory;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoomRestApiHistoryDao_Impl$1;->a(Landroid/arch/persistence/db/SupportSQLiteStatement;Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom$RestApiHistory;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR ABORT INTO `history`(`id`,`request`,`response`,`time`) VALUES (nullif(?, 0),?,?,?)"

    return-object v0
.end method
