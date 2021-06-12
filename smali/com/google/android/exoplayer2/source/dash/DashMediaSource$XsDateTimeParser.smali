.class final Lcom/google/android/exoplayer2/source/dash/DashMediaSource$XsDateTimeParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/DashMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "XsDateTimeParser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource$1;)V
    .locals 0

    .line 1210
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$XsDateTimeParser;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Long;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1214
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    .line 1215
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->g(Ljava/lang/String;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1210
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$XsDateTimeParser;->a(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
