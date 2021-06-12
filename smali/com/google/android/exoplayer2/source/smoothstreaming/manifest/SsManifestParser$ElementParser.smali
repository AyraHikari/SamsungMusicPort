.class abstract Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ElementParser"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;->c:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;

    .line 101
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;->a:Ljava/lang/String;

    .line 102
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;->b:Ljava/lang/String;

    .line 103
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;->d:Ljava/util/List;

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;
    .locals 1

    const-string v0, "QualityLevel"

    .line 162
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    new-instance p2, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$QualityLevelParser;

    invoke-direct {p2, p1, p3}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$QualityLevelParser;-><init>(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;Ljava/lang/String;)V

    return-object p2

    :cond_0
    const-string v0, "Protection"

    .line 164
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    new-instance p2, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ProtectionParser;

    invoke-direct {p2, p1, p3}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ProtectionParser;-><init>(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;Ljava/lang/String;)V

    return-object p2

    :cond_1
    const-string v0, "StreamIndex"

    .line 166
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 167
    new-instance p2, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$StreamIndexParser;

    invoke-direct {p2, p1, p3}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$StreamIndexParser;-><init>(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;Ljava/lang/String;)V

    return-object p2

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method protected final a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 257
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 260
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 262
    new-instance p2, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    return p3
.end method

.method protected final a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 284
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 287
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    .line 289
    new-instance p2, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    return-wide p3
.end method

.method protected abstract a()Ljava/lang/Object;
.end method

.method protected final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    .line 195
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 196
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 197
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    iget-object p1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;->c:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;

    if-nez v0, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;->c:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public final a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 111
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    if-eqz v0, :cond_5

    if-nez v1, :cond_5

    .line 135
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;->c(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    :pswitch_1
    if-eqz v0, :cond_5

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 143
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 144
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;->d(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 145
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 146
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;->a()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 114
    :pswitch_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 115
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;->b:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 117
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_5

    if-lez v1, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 121
    :cond_2
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 122
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 124
    :cond_3
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;->a:Ljava/lang/String;

    invoke-direct {p0, p0, v2, v4}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;->a(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;

    move-result-object v2

    if-nez v2, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    .line 128
    :cond_4
    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;->a(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_3
    const/4 p1, 0x0

    return-object p1

    .line 157
    :cond_5
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$MissingFieldException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 247
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 251
    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$MissingFieldException;

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$MissingFieldException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;->d:Ljava/util/List;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z
    .locals 1

    const/4 v0, 0x0

    .line 311
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 313
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    return p3
.end method

.method protected final b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 270
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 273
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 275
    new-instance p2, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 278
    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$MissingFieldException;

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$MissingFieldException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected b(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    return-void
.end method

.method protected b(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected final c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 298
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 301
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    .line 303
    new-instance p2, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 306
    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$MissingFieldException;

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$MissingFieldException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected c(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0

    return-void
.end method

.method protected d(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0

    return-void
.end method
