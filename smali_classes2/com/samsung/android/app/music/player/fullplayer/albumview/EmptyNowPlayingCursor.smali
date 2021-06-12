.class public final Lcom/samsung/android/app/music/player/fullplayer/albumview/EmptyNowPlayingCursor;
.super Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;
.source "SourceFile"


# static fields
.field public static final a:Lcom/samsung/android/app/music/player/fullplayer/albumview/EmptyNowPlayingCursor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/EmptyNowPlayingCursor;

    invoke-direct {v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/EmptyNowPlayingCursor;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/EmptyNowPlayingCursor;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/EmptyNowPlayingCursor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 0

    return-void
.end method

.method public deactivate()V
    .locals 0

    return-void
.end method

.method public getBlob(I)[B
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getColumnCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 1

    .line 92
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not exist in empty cursor"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 0

    const-string p1, ""

    return-object p1
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 96
    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDouble(I)D
    .locals 2

    .line 85
    sget-object p1, Lkotlin/jvm/internal/DoubleCompanionObject;->a:Lkotlin/jvm/internal/DoubleCompanionObject;

    invoke-virtual {p1}, Lkotlin/jvm/internal/DoubleCompanionObject;->a()D

    move-result-wide v0

    return-wide v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 2

    .line 79
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const-string v1, "Bundle.EMPTY"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getFloat(I)F
    .locals 0

    .line 84
    sget-object p1, Lkotlin/jvm/internal/FloatCompanionObject;->a:Lkotlin/jvm/internal/FloatCompanionObject;

    invoke-virtual {p1}, Lkotlin/jvm/internal/FloatCompanionObject;->a()F

    move-result p1

    return p1
.end method

.method public getInt(I)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public getLong(I)J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getNotificationUri()Landroid/net/Uri;
    .locals 2

    .line 103
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v1, "Uri.EMPTY"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getOrderedPosition(I)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public getQueuePosition(I)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public getShort(I)S
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 0

    const-string p1, ""

    return-object p1
.end method

.method public getType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getWantsAllOnMoveCalls()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isAvailableNetwork()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isMyMusicMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNull(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isShuffleEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 0

    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    return-void
.end method

.method public removeItems([I)V
    .locals 0

    return-void
.end method

.method public reorder(II)V
    .locals 0

    return-void
.end method

.method public requery()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    return-object p1
.end method

.method public setAvailableNetwork(Z)V
    .locals 0

    return-void
.end method

.method public setExtra(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public setMyMusicMode(Z)V
    .locals 0

    return-void
.end method

.method public setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method public setSupportLocalMode(Z)V
    .locals 0

    return-void
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 0

    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    return-void
.end method
