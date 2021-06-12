.class public Lcom/samsung/android/app/music/model/milkhistory/PlayInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private basicOffer:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "basicOffer"
        b = {
            "economyOffer"
        }
    .end annotation
.end field

.field private bonusOffer:I

.field private endDate:Ljava/lang/String;

.field private playCnt:I

.field private startDate:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBasicOffer()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/samsung/android/app/music/model/milkhistory/PlayInfo;->basicOffer:I

    return v0
.end method

.method public getBonusOffer()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/samsung/android/app/music/model/milkhistory/PlayInfo;->bonusOffer:I

    return v0
.end method

.method public getPlayCount()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/samsung/android/app/music/model/milkhistory/PlayInfo;->playCnt:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkhistory/PlayInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUsagePeriod()Ljava/lang/String;
    .locals 7

    const-string v0, ""

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    .line 68
    iget-object v2, p0, Lcom/samsung/android/app/music/model/milkhistory/PlayInfo;->startDate:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/app/music/util/DateTimeUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 69
    iget-object v3, p0, Lcom/samsung/android/app/music/model/milkhistory/PlayInfo;->endDate:Ljava/lang/String;

    invoke-static {v3}, Lcom/samsung/android/app/music/util/DateTimeUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 71
    new-instance v4, Ljava/text/SimpleDateFormat;

    .line 72
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const-string v6, "MMMM/dd/yyyy"

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 73
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 75
    new-instance v5, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 77
    :try_start_0
    invoke-virtual {v5, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 78
    invoke-virtual {v5, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ~ "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catch_0
    move-exception v1

    .line 82
    :try_start_1
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "basicOffer["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/model/milkhistory/PlayInfo;->basicOffer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] playCnt["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/model/milkhistory/PlayInfo;->playCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
