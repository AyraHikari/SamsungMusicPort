.class public final Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$StreamingCp;,
        Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;,
        Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$UrlRetriever;
    }
.end annotation


# static fields
.field private static final DEFAULT_TIME_STAMP:Ljava/lang/String; = "0"

.field private static final DIVIDER:C = '?'

.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field public static final FULL_SONG:Ljava/lang/String; = "1"


# instance fields
.field public final id:Ljava/lang/String;

.field public final options:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;

.field public final requestedTime:J

.field public final secureType:I

.field public final serverTimeStamp:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final totalBytes:J

.field public final urlRetriever:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$UrlRetriever;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$UrlRetriever;JILjava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->id:Ljava/lang/String;

    .line 75
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->urlRetriever:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$UrlRetriever;

    .line 76
    iput-wide p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->totalBytes:J

    if-nez p6, :cond_0

    const-string p6, "0"

    .line 77
    :cond_0
    iput-object p6, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->serverTimeStamp:Ljava/lang/String;

    .line 78
    iput p5, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->secureType:I

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->requestedTime:J

    .line 80
    iput-object p7, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->options:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;

    return-void
.end method

.method public static buildStreamingId(Ljava/lang/String;III)Ljava/lang/String;
    .locals 1

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3f

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getFirstPart(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 113
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x3f

    .line 116
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getFourthPart(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 140
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/16 v0, 0x3f

    .line 143
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 144
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 145
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 146
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getSecondPart(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 121
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/16 v0, 0x3f

    .line 124
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 125
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getThirdPart(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 130
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/16 v0, 0x3f

    .line 133
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 134
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 135
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static obtain(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$UrlRetriever;JILcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;
    .locals 7

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v6, p5

    .line 50
    invoke-static/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->obtain(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$UrlRetriever;JILjava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;

    move-result-object p0

    return-object p0
.end method

.method public static obtain(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$UrlRetriever;JILjava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;
    .locals 8

    const/4 v0, 0x1

    .line 56
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;->obtain(Z)Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move-object v6, p5

    .line 55
    invoke-static/range {v1 .. v7}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->obtain(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$UrlRetriever;JILjava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;

    move-result-object p0

    return-object p0
.end method

.method public static obtain(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$UrlRetriever;JILjava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;
    .locals 9

    .line 61
    new-instance v8, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;-><init>(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$UrlRetriever;JILjava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;)V

    return-object v8
.end method

.method public static parseCp(Ljava/lang/String;)I
    .locals 0

    .line 108
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->getFourthPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static parseFullSong(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 102
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->getThirdPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseQuality(Ljava/lang/String;)I
    .locals 0

    .line 96
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->getSecondPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static parseSourceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 91
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->getFirstPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getServerTotalBytes()J
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->urlRetriever:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$UrlRetriever;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$UrlRetriever;->getTotalBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->urlRetriever:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$UrlRetriever;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$UrlRetriever;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " totalBytes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->totalBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " serverTimeStamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->serverTimeStamp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " options ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->options:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
