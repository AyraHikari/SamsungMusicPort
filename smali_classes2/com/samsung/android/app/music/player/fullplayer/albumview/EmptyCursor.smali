.class public final Lcom/samsung/android/app/music/player/fullplayer/albumview/EmptyCursor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/database/Cursor;


# static fields
.field public static final a:Lcom/samsung/android/app/music/player/fullplayer/albumview/EmptyCursor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/EmptyCursor;

    invoke-direct {v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/EmptyCursor;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/EmptyCursor;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/EmptyCursor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 34
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

    .line 38
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

    .line 26
    sget-object p1, Lkotlin/jvm/internal/DoubleCompanionObject;->a:Lkotlin/jvm/internal/DoubleCompanionObject;

    invoke-virtual {p1}, Lkotlin/jvm/internal/DoubleCompanionObject;->a()D

    move-result-wide v0

    return-wide v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 2

    .line 17
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const-string v1, "Bundle.EMPTY"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getFloat(I)F
    .locals 0

    .line 24
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

    .line 50
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v1, "Uri.EMPTY"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getShort(I)S
    .locals 0

    const/4 p1, -0x1

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

.method public isAfterLast()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isBeforeFirst()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isClosed()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isFirst()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLast()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNull(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public move(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public moveToFirst()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public moveToLast()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public moveToNext()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public moveToPosition(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public moveToPrevious()Z
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

.method public requery()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    return-object p1
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
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
