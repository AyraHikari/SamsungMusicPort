.class public Lcom/samsung/android/app/music/model/playhistory/PlayHistory;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private date:Ljava/lang/String;

.field private deviceId:Ljava/lang/String;

.field private trackTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/samsung/android/app/music/model/playhistory/PlayHistory;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/samsung/android/app/music/model/playhistory/PlayHistory;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackTitle()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/samsung/android/app/music/model/playhistory/PlayHistory;->trackTitle:Ljava/lang/String;

    return-object v0
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 3

    .line 40
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "track_title"

    .line 42
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/playhistory/PlayHistory;->getTrackTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "date"

    .line 43
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/playhistory/PlayHistory;->getDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "date_local"

    .line 45
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/playhistory/PlayHistory;->getDate()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/util/DateTimeUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "device_id"

    .line 46
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/playhistory/PlayHistory;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
