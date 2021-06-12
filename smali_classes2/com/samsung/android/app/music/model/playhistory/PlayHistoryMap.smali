.class public Lcom/samsung/android/app/music/model/playhistory/PlayHistoryMap;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FREE_RADIO_TYPE:I = 0x0

.field public static final SUBSCRIPTION_TYPE:I = 0x1


# instance fields
.field private endDate:Ljava/lang/String;

.field private historyId:Ljava/lang/String;

.field private historyTitle:Ljava/lang/String;

.field private startDate:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static makeTestPlayHistoryMap()Lcom/samsung/android/app/music/model/playhistory/PlayHistoryMap;
    .locals 2

    .line 60
    new-instance v0, Lcom/samsung/android/app/music/model/playhistory/PlayHistoryMap;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/playhistory/PlayHistoryMap;-><init>()V

    const-string v1, "333"

    .line 61
    iput-object v1, v0, Lcom/samsung/android/app/music/model/playhistory/PlayHistoryMap;->historyId:Ljava/lang/String;

    const-string v1, "title"

    .line 62
    iput-object v1, v0, Lcom/samsung/android/app/music/model/playhistory/PlayHistoryMap;->historyTitle:Ljava/lang/String;

    const-string v1, "2018-06-28 14:55:28"

    .line 63
    iput-object v1, v0, Lcom/samsung/android/app/music/model/playhistory/PlayHistoryMap;->startDate:Ljava/lang/String;

    const-string v1, "2018-06-28 14:55:28"

    .line 64
    iput-object v1, v0, Lcom/samsung/android/app/music/model/playhistory/PlayHistoryMap;->endDate:Ljava/lang/String;

    const/4 v1, 0x0

    .line 65
    iput v1, v0, Lcom/samsung/android/app/music/model/playhistory/PlayHistoryMap;->type:I

    return-object v0
.end method


# virtual methods
.method public getEndDate()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/model/playhistory/PlayHistoryMap;->endDate:Ljava/lang/String;

    return-object v0
.end method

.method public getHistoryId()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/samsung/android/app/music/model/playhistory/PlayHistoryMap;->historyId:Ljava/lang/String;

    return-object v0
.end method

.method public getHistorytitle()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/music/model/playhistory/PlayHistoryMap;->historyTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getRadioOfferType()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/samsung/android/app/music/model/playhistory/PlayHistoryMap;->type:I

    return v0
.end method

.method public getStartDate()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/samsung/android/app/music/model/playhistory/PlayHistoryMap;->startDate:Ljava/lang/String;

    return-object v0
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 3

    .line 45
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "history_id"

    .line 46
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/playhistory/PlayHistoryMap;->getHistoryId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "history_title"

    .line 47
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/playhistory/PlayHistoryMap;->getHistorytitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "start_date"

    .line 48
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/playhistory/PlayHistoryMap;->getStartDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "start_date_local"

    .line 50
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/playhistory/PlayHistoryMap;->getStartDate()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/util/DateTimeUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "end_date"

    .line 51
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/playhistory/PlayHistoryMap;->getEndDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "end_date_local"

    .line 53
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/playhistory/PlayHistoryMap;->getEndDate()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/util/DateTimeUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 52
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "offer_type"

    .line 54
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/playhistory/PlayHistoryMap;->getRadioOfferType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method
