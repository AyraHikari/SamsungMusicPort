.class public Lcom/samsung/android/app/music/lyrics/LyricsExtra;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DATA_ARGS_QUEUE_TYPE:Ljava/lang/String; = "queue_type"

.field private static final DATA_ARGS_SOURCE_ID:Ljava/lang/String; = "source_id"

.field private static final DATA_ARGS_STATION_ID:Ljava/lang/String; = "station_id"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToExtra(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Landroid/os/Bundle;
    .locals 3

    .line 21
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "queue_type"

    .line 26
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isRadio()Z

    move-result v2

    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "source_id"

    .line 27
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getSourceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isRadio()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "station_id"

    .line 29
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getChannelId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public static getSourceId(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "source_id"

    .line 38
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStationId(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "station_id"

    .line 46
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
