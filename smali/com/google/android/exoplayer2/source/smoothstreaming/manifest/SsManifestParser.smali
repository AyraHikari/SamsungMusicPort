.class public Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$QualityLevelParser;,
        Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$StreamIndexParser;,
        Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ProtectionParser;,
        Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;,
        Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;,
        Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$MissingFieldException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<",
        "Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;->a:Lorg/xmlpull/v1/XmlPullParserFactory;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 60
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t create XmlPullParserFactory instance"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public a(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;->a:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    const/4 v1, 0x0

    .line 68
    invoke-interface {v0, p2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 69
    new-instance p2, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;

    .line 70
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v1, p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;-><init>(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 73
    new-instance p2, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public synthetic b(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;->a(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    move-result-object p1

    return-object p1
.end method
