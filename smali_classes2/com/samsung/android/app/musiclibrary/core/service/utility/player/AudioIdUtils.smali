.class public final Lcom/samsung/android/app/musiclibrary/core/service/utility/player/AudioIdUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioIdUtils"

.field private static final sEmptyList:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 14
    new-array v0, v0, [J

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/AudioIdUtils;->sEmptyList:[J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAudioIds(Landroid/database/Cursor;)[J
    .locals 8

    const-string v0, "AudioIdUtils"

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAudioIds() - cursor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_0

    .line 19
    sget-object p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/AudioIdUtils;->sEmptyList:[J

    return-object p0

    .line 21
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 23
    sget-object p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/AudioIdUtils;->sEmptyList:[J

    return-object p0

    .line 25
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    :try_start_0
    const-string v0, "audio_id"

    .line 29
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "_id"

    .line 31
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 34
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v1, v1, [J

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 39
    :cond_2
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_3

    add-int/lit8 v6, v3, 0x1

    .line 41
    aput-wide v4, v1, v3

    move v3, v6

    .line 43
    :cond_3
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_2

    if-nez v3, :cond_4

    .line 46
    sget-object p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/AudioIdUtils;->sEmptyList:[J

    return-object p0

    .line 49
    :cond_4
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-eq v3, p0, :cond_5

    .line 50
    new-array p0, v3, [J

    .line 51
    invoke-static {v1, v2, p0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_5
    move-object p0, v1

    :goto_1
    const-string v0, "AudioIdUtils"

    const-string v1, "getAudioIds end"

    .line 55
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
