.class public Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/xml/sax/helpers/DefaultHandler;",
        "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<",
        "Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(\\d+)(?:/(\\d+))?"

    .line 63
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->a:Ljava/util/regex/Pattern;

    const-string v0, "CC([1-4])=.*"

    .line 65
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->b:Ljava/util/regex/Pattern;

    const-string v0, "([1-9]|[1-5][0-9]|6[0-3])=.*"

    .line 67
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->c:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 82
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->d:Ljava/lang/String;

    .line 85
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->e:Lorg/xmlpull/v1/XmlPullParserFactory;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 87
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Couldn\'t create XmlPullParserFactory instance"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected static a(Lorg/xmlpull/v1/XmlPullParser;F)F
    .locals 2

    const-string v0, "frameRate"

    const/4 v1, 0x0

    .line 1086
    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1088
    sget-object v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 1089
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 1090
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x2

    .line 1091
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 1092
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    int-to-float p1, p1

    .line 1093
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    :cond_1
    :goto_0
    return p1
.end method

.method private static a(II)I
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    return p1

    :cond_0
    if-ne p1, v0, :cond_1

    return p0

    :cond_1
    if-ne p0, p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 1013
    :goto_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->b(Z)V

    return p0
.end method

.method protected static a(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1040
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1041
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    const-string v2, "urn:scte:dash:cc:cea-608:2015"

    .line 1042
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1044
    sget-object v2, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->b:Ljava/util/regex/Pattern;

    iget-object v3, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1045
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    .line 1046
    invoke-virtual {v2, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const-string v2, "MpdParser"

    .line 1048
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to parse CEA-608 channel number from: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->b:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method protected static a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 1

    const/4 v0, 0x0

    .line 1128
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 1129
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    :goto_0
    return p2
.end method

.method private static a(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;)V"
        }
    .end annotation

    .line 913
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 914
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    .line 915
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->a()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    .line 916
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 917
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->a(Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 920
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1

    .line 968
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/MimeTypes;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/ttml+xml"

    .line 969
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/x-mp4-vtt"

    .line 970
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/cea-708"

    .line 971
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/cea-608"

    .line 972
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method protected static b(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1057
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1058
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    const-string v2, "urn:scte:dash:cc:cea-708:2015"

    .line 1059
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1061
    sget-object v2, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->c:Ljava/util/regex/Pattern;

    iget-object v3, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1062
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    .line 1063
    invoke-virtual {v2, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const-string v2, "MpdParser"

    .line 1065
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to parse CEA-708 service block number from: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->b:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method protected static b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 1

    const/4 v0, 0x0

    .line 1103
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-wide p2

    .line 1107
    :cond_0
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->f(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method protected static b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "schemeIdUri"

    const-string v1, ""

    .line 1029
    invoke-static {p0, v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "value"

    const/4 v2, 0x0

    .line 1030
    invoke-static {p0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "id"

    .line 1031
    invoke-static {p0, v3, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1033
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1034
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1035
    new-instance p0, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 936
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/MimeTypes;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 937
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/MimeTypes;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 938
    :cond_0
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/MimeTypes;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 939
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/MimeTypes;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 940
    :cond_1
    invoke-static {p0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p0

    :cond_2
    const-string v0, "application/mp4"

    .line 942
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const-string p0, "stpp"

    .line 943
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "application/ttml+xml"

    return-object p0

    :cond_3
    const-string p0, "wvtt"

    .line 945
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const-string p0, "application/x-mp4-vtt"

    return-object p0

    :cond_4
    const-string v0, "application/x-rawcc"

    .line 948
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    if-eqz p1, :cond_7

    const-string p0, "cea708"

    .line 950
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "application/cea-708"

    return-object p0

    :cond_5
    const-string p0, "eia608"

    .line 952
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_6

    const-string p0, "cea608"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_7

    :cond_6
    const-string p0, "application/cea-608"

    return-object p0

    :cond_7
    return-object v1

    :cond_8
    return-object v1
.end method

.method protected static b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1138
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    move-object p0, p2

    :cond_0
    return-object p0
.end method

.method protected static c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1113
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-wide p2

    .line 1117
    :cond_0
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->g(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    return-object p0

    .line 991
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->b(Z)V

    return-object p0
.end method

.method protected static c(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1073
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1074
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    .line 1075
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->a:Ljava/lang/String;

    const-string v3, "tag:dolby.com,2014:dash:DolbyDigitalPlusExtensionType:2014"

    .line 1076
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ec+3"

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->b:Ljava/lang/String;

    .line 1077
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "audio/eac3-joc"

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "audio/eac3"

    return-object p0
.end method

.method protected static c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1123
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1124
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/util/UriUtil;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 1

    const/4 v0, 0x0

    .line 1133
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 1134
    :cond_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    :goto_0
    return-wide p2
.end method

.method protected static k(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 5

    const-string v0, "value"

    const/4 v1, 0x0

    .line 1152
    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1156
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x185d7c

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_4

    const v2, 0x2cd22f

    if-eq v1, v2, :cond_3

    const v2, 0x2f3613

    if-eq v1, v2, :cond_2

    const v2, 0x2fcffc

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "fa01"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x3

    goto :goto_1

    :cond_2
    const-string v1, "f801"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x2

    goto :goto_1

    :cond_3
    const-string v1, "a000"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x1

    goto :goto_1

    :cond_4
    const-string v1, "4000"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    return v0

    :pswitch_0
    const/16 p0, 0x8

    return p0

    :pswitch_1
    const/4 p0, 0x6

    return p0

    :pswitch_2
    return v3

    :pswitch_3
    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected a(Lcom/google/android/exoplayer2/Format;)I
    .locals 2

    .line 333
    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    .line 334
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 336
    :cond_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/MimeTypes;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    return p1

    .line 338
    :cond_1
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/MimeTypes;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    return p1

    .line 340
    :cond_2
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x3

    return p1

    :cond_3
    return v1
.end method

.method protected a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "J)",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Period;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "id"

    const/4 v1, 0x0

    .line 200
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "start"

    .line 201
    invoke-static {p1, v0, p3, p4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    const-string p3, "duration"

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 202
    invoke-static {p1, p3, v6, v7}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide p3

    .line 204
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 205
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move-object v2, v1

    .line 208
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v8, "BaseURL"

    .line 209
    invoke-static {p1, v8}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    if-nez v0, :cond_6

    .line 211
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string v8, "AdaptationSet"

    .line 214
    invoke-static {p1, v8}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 215
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;)Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v8, "EventStream"

    .line 216
    invoke-static {p1, v8}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 217
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->f(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const-string v8, "SegmentBase"

    .line 218
    invoke-static {p1, v8}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 219
    invoke-virtual {p0, p1, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    move-result-object v2

    goto :goto_0

    :cond_4
    const-string v8, "SegmentList"

    .line 220
    invoke-static {p1, v8}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 221
    invoke-virtual {p0, p1, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;

    move-result-object v2

    goto :goto_0

    :cond_5
    const-string v8, "SegmentTemplate"

    .line 222
    invoke-static {p1, v8}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 223
    invoke-virtual {p0, p1, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;

    move-result-object v2

    :cond_6
    :goto_0
    const-string v8, "Period"

    .line 225
    invoke-static {p1, v8}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v2, p0

    .line 227
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->a(Ljava/lang/String;JLjava/util/List;Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;ILjava/util/List;Ljava/lang/String;Ljava/util/List;)Lcom/google/android/exoplayer2/Format;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIFIII",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;)",
            "Lcom/google/android/exoplayer2/Format;"
        }
    .end annotation

    move-object v1, p2

    move-object/from16 v3, p12

    .line 515
    invoke-static {p2, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v2, "audio/eac3"

    .line 517
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 518
    invoke-static/range {p13 .. p13}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    move-object v2, v0

    .line 520
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/MimeTypes;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v8, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object/from16 v3, p12

    move/from16 v4, p8

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v9, p10

    .line 521
    invoke-static/range {v0 .. v9}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIFLjava/util/List;I)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0

    .line 523
    :cond_1
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/MimeTypes;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v7, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object/from16 v3, p12

    move/from16 v4, p8

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v8, p10

    move-object/from16 v9, p9

    .line 524
    invoke-static/range {v0 .. v9}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0

    .line 526
    :cond_2
    invoke-static {v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "application/cea-608"

    .line 528
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 529
    invoke-static/range {p11 .. p11}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->a(Ljava/util/List;)I

    move-result v0

    :goto_0
    move v7, v0

    goto :goto_1

    :cond_3
    const-string v0, "application/cea-708"

    .line 530
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 531
    invoke-static/range {p11 .. p11}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->b(Ljava/util/List;)I

    move-result v0

    goto :goto_0

    :cond_4
    const/4 v0, -0x1

    const/4 v7, -0x1

    :goto_1
    move-object v0, p1

    move-object v1, p2

    move-object/from16 v3, p12

    move/from16 v4, p8

    move/from16 v5, p10

    move-object/from16 v6, p9

    .line 535
    invoke-static/range {v0 .. v7}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0

    :cond_5
    move-object v2, v0

    :cond_6
    move-object v0, p1

    move-object v1, p2

    move-object/from16 v3, p12

    move/from16 v4, p8

    move/from16 v5, p10

    move-object/from16 v6, p9

    .line 539
    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/Format;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;JJ[BJ)Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;
    .locals 11

    .line 829
    new-instance v10, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    move-object v0, v10

    move-object v1, p1

    move-object v2, p2

    move-wide/from16 v3, p5

    move-wide v5, p3

    move-object/from16 v7, p7

    move-wide/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[BJ)V

    return-object v10
.end method

.method protected a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;JLjava/io/ByteArrayOutputStream;)Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "id"

    const-wide/16 v2, 0x0

    .line 753
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v7

    const-string v1, "duration"

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 754
    invoke-static {v0, v1, v4, v5}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    const-string v1, "presentationTime"

    .line 755
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v1

    const-wide/16 v11, 0x3e8

    move-wide/from16 v13, p4

    .line 756
    invoke-static/range {v9 .. v14}, Lcom/google/android/exoplayer2/util/Util;->d(JJJ)J

    move-result-wide v9

    const-wide/32 v13, 0xf4240

    move-wide v11, v1

    move-wide/from16 v15, p4

    .line 757
    invoke-static/range {v11 .. v16}, Lcom/google/android/exoplayer2/util/Util;->d(JJJ)J

    move-result-wide v12

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    .line 759
    invoke-virtual {v1, v0, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/ByteArrayOutputStream;)[B

    move-result-object v11

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    .line 760
    invoke-virtual/range {v4 .. v13}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->a(Ljava/lang/String;Ljava/lang/String;JJ[BJ)Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    move-result-object v0

    return-object v0
.end method

.method protected a(IILjava/util/List;Ljava/util/List;Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Representation;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;)",
            "Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;"
        }
    .end annotation

    .line 319
    new-instance v6, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    move-object v0, v6

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;-><init>(IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v6
.end method

.method protected a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;)Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;
    .locals 37
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    const-string v0, "id"

    const/4 v1, -0x1

    .line 239
    invoke-static {v15, v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v16

    .line 240
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->b(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    const-string v2, "mimeType"

    const/4 v13, 0x0

    .line 242
    invoke-interface {v15, v13, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v2, "codecs"

    .line 243
    invoke-interface {v15, v13, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v2, "width"

    .line 244
    invoke-static {v15, v2, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v19

    const-string v2, "height"

    .line 245
    invoke-static {v15, v2, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v20

    const/high16 v2, -0x40800000    # -1.0f

    .line 246
    invoke-static {v15, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->a(Lorg/xmlpull/v1/XmlPullParser;F)F

    move-result v21

    const-string v2, "audioSamplingRate"

    .line 248
    invoke-static {v15, v2, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v22

    const-string v2, "lang"

    .line 249
    invoke-interface {v15, v13, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 251
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 252
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 253
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 254
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 255
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/16 v23, 0x0

    move-object/from16 v7, p2

    move-object/from16 v27, p3

    move v5, v0

    move-object v6, v2

    move-object/from16 v28, v13

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, -0x1

    .line 260
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v0, "BaseURL"

    .line 261
    invoke-static {v15, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez v24, :cond_0

    .line 263
    invoke-static {v15, v7}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    move-object/from16 v30, v0

    move-object/from16 v29, v6

    move-object v6, v8

    move-object/from16 v32, v9

    move-object/from16 v33, v10

    move-object v7, v11

    move-object/from16 v35, v12

    move-object/from16 v36, v13

    move-object v1, v15

    const/16 v24, 0x1

    :goto_1
    move v8, v5

    goto/16 :goto_6

    :cond_0
    :goto_2
    move v2, v5

    move-object/from16 v29, v6

    move-object/from16 v30, v7

    move-object v6, v8

    move-object/from16 v32, v9

    move-object/from16 v33, v10

    move-object v7, v11

    move-object/from16 v35, v12

    move-object/from16 v36, v13

    move-object v1, v15

    goto/16 :goto_5

    :cond_1
    const-string v0, "ContentProtection"

    .line 266
    invoke-static {v15, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 267
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->c(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;

    move-result-object v0

    .line 268
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 269
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v28, v1

    check-cast v28, Ljava/lang/String;

    .line 271
    :cond_2
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 272
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_3
    move-object/from16 v29, v6

    move-object/from16 v30, v7

    move-object v6, v8

    move-object/from16 v32, v9

    move-object/from16 v33, v10

    move-object v7, v11

    move-object/from16 v35, v12

    move-object/from16 v36, v13

    move-object v1, v15

    goto :goto_1

    :cond_4
    const-string v0, "ContentComponent"

    .line 274
    invoke-static {v15, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "lang"

    .line 275
    invoke-interface {v15, v13, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 276
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->b(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    invoke-static {v5, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->a(II)I

    move-result v0

    move-object/from16 v29, v6

    move-object/from16 v30, v7

    move-object v6, v8

    move-object/from16 v32, v9

    move-object/from16 v33, v10

    move-object v7, v11

    move-object/from16 v35, v12

    move-object/from16 v36, v13

    move-object v1, v15

    move v8, v0

    goto/16 :goto_6

    :cond_5
    const-string v0, "Role"

    .line 277
    invoke-static {v15, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 278
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    or-int v25, v25, v0

    goto :goto_3

    :cond_6
    const-string v0, "AudioChannelConfiguration"

    .line 279
    invoke-static {v15, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 280
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->j(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v26

    goto :goto_3

    :cond_7
    const-string v0, "Accessibility"

    .line 281
    invoke-static {v15, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "Accessibility"

    .line 282
    invoke-static {v15, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_8
    const-string v0, "SupplementalProperty"

    .line 283
    invoke-static {v15, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "SupplementalProperty"

    .line 284
    invoke-static {v15, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_9
    const-string v0, "Representation"

    .line 285
    invoke-static {v15, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move v15, v5

    move/from16 v5, v19

    move-object/from16 v29, v6

    move/from16 v6, v20

    move-object/from16 v30, v7

    move/from16 v7, v21

    move-object/from16 v31, v8

    move/from16 v8, v26

    move-object/from16 v32, v9

    move/from16 v9, v22

    move-object/from16 v33, v10

    move-object/from16 v10, v29

    move-object/from16 v34, v11

    move/from16 v11, v25

    move-object/from16 v35, v12

    move-object/from16 v12, v33

    move-object/from16 v36, v13

    move-object/from16 v13, v27

    .line 286
    invoke-virtual/range {v0 .. v13}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIFIILjava/lang/String;ILjava/util/List;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;

    move-result-object v0

    .line 289
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;->a:Lcom/google/android/exoplayer2/Format;

    .line 290
    invoke-virtual {v14, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->a(Lcom/google/android/exoplayer2/Format;)I

    move-result v1

    .line 289
    invoke-static {v15, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->a(II)I

    move-result v1

    move-object/from16 v6, v31

    .line 291
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v8, v1

    move-object/from16 v7, v34

    move-object/from16 v1, p1

    goto/16 :goto_6

    :cond_a
    move v15, v5

    move-object/from16 v29, v6

    move-object/from16 v30, v7

    move-object v6, v8

    move-object/from16 v32, v9

    move-object/from16 v33, v10

    move-object/from16 v34, v11

    move-object/from16 v35, v12

    move-object/from16 v36, v13

    const-string v0, "SegmentBase"

    move v2, v15

    move-object/from16 v1, p1

    .line 292
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 293
    move-object/from16 v0, v27

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    invoke-virtual {v14, v1, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    move-result-object v0

    :goto_4
    move-object/from16 v27, v0

    move v8, v2

    move-object/from16 v7, v34

    goto :goto_6

    :cond_b
    const-string v0, "SegmentList"

    .line 294
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 295
    move-object/from16 v0, v27

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;

    invoke-virtual {v14, v1, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;

    move-result-object v0

    goto :goto_4

    :cond_c
    const-string v0, "SegmentTemplate"

    .line 296
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 297
    move-object/from16 v0, v27

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;

    invoke-virtual {v14, v1, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;

    move-result-object v0

    goto :goto_4

    :cond_d
    const-string v0, "InbandEventStream"

    .line 298
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "InbandEventStream"

    .line 299
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    move-result-object v0

    move-object/from16 v7, v34

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_e
    move-object/from16 v7, v34

    .line 300
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->b(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 301
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->e(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_f
    :goto_5
    move v8, v2

    :goto_6
    const-string v0, "AdaptationSet"

    .line 303
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 306
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v10, 0x0

    .line 307
    :goto_7
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v10, v0, :cond_10

    .line 308
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;

    iget-object v2, v14, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v3, v28

    move-object/from16 v4, v35

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->a(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_10
    move-object/from16 v0, p0

    move/from16 v1, v16

    move v2, v8

    move-object v3, v9

    move-object/from16 v4, v33

    move-object/from16 v5, v32

    .line 312
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->a(IILjava/util/List;Ljava/util/List;Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    move-result-object v0

    return-object v0

    :cond_11
    move-object v15, v1

    move-object v11, v7

    move v5, v8

    move-object/from16 v7, v30

    move-object/from16 v9, v32

    move-object/from16 v10, v33

    move-object/from16 v12, v35

    move-object/from16 v13, v36

    move-object v8, v6

    move-object/from16 v6, v29

    goto/16 :goto_0
.end method

.method protected a(JJJZJJJJLcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;Landroid/net/Uri;Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJZJJJJ",
            "Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Period;",
            ">;)",
            "Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;"
        }
    .end annotation

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    move-wide/from16 v14, p14

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    .line 183
    new-instance v19, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move-object/from16 v0, v19

    invoke-direct/range {v0 .. v18}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;-><init>(JJJZJJJJLcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;Landroid/net/Uri;Ljava/util/List;)V

    return-object v19
.end method

.method public a(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->e:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    const/4 v1, 0x0

    .line 97
    invoke-interface {v0, p2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 98
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    const-string p2, "MPD"

    .line 99
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 103
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move-result-object p1

    return-object p1

    .line 100
    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string p2, "inputStream does not contain a valid media presentation description"

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 105
    new-instance p2, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method protected a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
    .locals 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "availabilityStartTime"

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 111
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v5

    const-string v1, "mediaPresentationDuration"

    .line 112
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v7

    const-string v1, "minBufferTime"

    .line 113
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    const-string v1, "type"

    const/4 v4, 0x0

    .line 114
    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v12, 0x0

    if-eqz v1, :cond_0

    const-string v13, "dynamic"

    .line 115
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const-string v13, "minimumUpdatePeriod"

    .line 116
    invoke-static {v0, v13, v2, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v13

    goto :goto_1

    :cond_1
    move-wide v13, v2

    :goto_1
    if-eqz v1, :cond_2

    const-string v15, "timeShiftBufferDepth"

    .line 119
    invoke-static {v0, v15, v2, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v15

    goto :goto_2

    :cond_2
    move-wide v15, v2

    :goto_2
    if-eqz v1, :cond_3

    const-string v4, "suggestedPresentationDelay"

    .line 121
    invoke-static {v0, v4, v2, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v17

    goto :goto_3

    :cond_3
    move-wide/from16 v17, v2

    :goto_3
    const-string v4, "publishTime"

    .line 122
    invoke-static {v0, v4, v2, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v19

    .line 126
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_4

    move-wide/from16 v21, v2

    goto :goto_4

    :cond_4
    const-wide/16 v21, 0x0

    :goto_4
    move-object/from16 v11, p2

    move-wide/from16 v2, v21

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    .line 131
    :goto_5
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-wide/from16 v26, v15

    const-string v15, "BaseURL"

    .line 132
    invoke-static {v0, v15}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    if-nez v12, :cond_5

    .line 134
    invoke-static {v0, v11}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-wide/from16 v31, v13

    const/4 v12, 0x1

    goto/16 :goto_8

    :cond_5
    move-wide/from16 v29, v2

    move/from16 v28, v12

    move-wide/from16 v31, v13

    goto/16 :goto_7

    :cond_6
    const-string v15, "UTCTiming"

    .line 137
    invoke-static {v0, v15}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 138
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;

    move-result-object v15

    move-wide/from16 v31, v13

    move-object/from16 v23, v15

    goto/16 :goto_8

    :cond_7
    const-string v15, "Location"

    .line 139
    invoke-static {v0, v15}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 140
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    move-wide/from16 v31, v13

    move-object/from16 v22, v15

    goto/16 :goto_8

    :cond_8
    const-string v15, "Period"

    .line 141
    invoke-static {v0, v15}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    if-nez v21, :cond_5

    move-object/from16 v15, p0

    move/from16 v28, v12

    .line 142
    invoke-virtual {v15, v0, v11, v2, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)Landroid/util/Pair;

    move-result-object v12

    move-wide/from16 v29, v2

    .line 143
    iget-object v2, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-wide/from16 v31, v13

    .line 144
    iget-wide v13, v2, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->b:J

    const-wide v24, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v13, v24

    if-nez v3, :cond_a

    if-eqz v1, :cond_9

    move/from16 v12, v28

    move-wide/from16 v2, v29

    const/16 v21, 0x1

    goto :goto_8

    .line 150
    :cond_9
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to determine start of period "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_a
    iget-object v3, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide v24, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v12, v24

    if-nez v3, :cond_b

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_6

    .line 154
    :cond_b
    iget-wide v14, v2, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->b:J

    add-long/2addr v12, v14

    .line 156
    :goto_6
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide v2, v12

    move/from16 v12, v28

    goto :goto_8

    :goto_7
    move/from16 v12, v28

    move-wide/from16 v2, v29

    :goto_8
    const-string v13, "MPD"

    .line 159
    invoke-static {v0, v13}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_10

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v7, v13

    if-nez v0, :cond_e

    cmp-long v0, v2, v13

    if-eqz v0, :cond_c

    move-wide v7, v2

    goto :goto_9

    :cond_c
    if-eqz v1, :cond_d

    goto :goto_9

    .line 166
    :cond_d
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "Unable to determine duration of static manifest."

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_e
    :goto_9
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    move-object/from16 v24, v4

    move-object/from16 v4, p0

    move v11, v1

    move-wide/from16 v12, v31

    move-wide/from16 v14, v26

    move-wide/from16 v16, v17

    move-wide/from16 v18, v19

    move-object/from16 v20, v23

    move-object/from16 v21, v22

    move-object/from16 v22, v24

    .line 174
    invoke-virtual/range {v4 .. v22}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->a(JJJZJJJJLcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;Landroid/net/Uri;Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move-result-object v0

    return-object v0

    .line 171
    :cond_f
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "No periods found."

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    move-wide/from16 v15, v26

    move-wide/from16 v13, v31

    goto/16 :goto_5
.end method

.method protected a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIFIILjava/lang/String;ILjava/util/List;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIFII",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;",
            "Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;",
            ")",
            "Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v14, p0

    move-object/from16 v0, p1

    const-string v1, "id"

    const/4 v2, 0x0

    .line 456
    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "bandwidth"

    const/4 v4, -0x1

    .line 457
    invoke-static {v0, v3, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v8

    const-string v3, "mimeType"

    move-object/from16 v4, p3

    .line 459
    invoke-static {v0, v3, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "codecs"

    move-object/from16 v5, p4

    .line 460
    invoke-static {v0, v4, v5}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v4, "width"

    move/from16 v5, p5

    .line 461
    invoke-static {v0, v4, v5}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v4

    const-string v5, "height"

    move/from16 v6, p6

    .line 462
    invoke-static {v0, v5, v6}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    move/from16 v6, p7

    .line 463
    invoke-static {v0, v6}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->a(Lorg/xmlpull/v1/XmlPullParser;F)F

    move-result v6

    const-string v7, "audioSamplingRate"

    move/from16 v9, p9

    .line 465
    invoke-static {v0, v7, v9}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v7

    .line 467
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 468
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 469
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    move/from16 v16, p8

    move-object/from16 v10, p13

    move-object/from16 v17, v2

    move-object/from16 v2, p2

    .line 473
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-object/from16 v18, v12

    const-string v12, "BaseURL"

    .line 474
    invoke-static {v0, v12}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    if-nez v9, :cond_0

    .line 476
    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x1

    :cond_0
    :goto_1
    move-object/from16 v19, v2

    goto/16 :goto_2

    :cond_1
    const-string v12, "AudioChannelConfiguration"

    .line 479
    invoke-static {v0, v12}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 480
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->j(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v12

    move-object/from16 v19, v2

    move/from16 v16, v12

    goto/16 :goto_2

    :cond_2
    const-string v12, "SegmentBase"

    .line 481
    invoke-static {v0, v12}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 482
    check-cast v10, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    invoke-virtual {v14, v0, v10}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    move-result-object v10

    goto :goto_1

    :cond_3
    const-string v12, "SegmentList"

    .line 483
    invoke-static {v0, v12}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 484
    check-cast v10, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;

    invoke-virtual {v14, v0, v10}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;

    move-result-object v10

    goto :goto_1

    :cond_4
    const-string v12, "SegmentTemplate"

    .line 485
    invoke-static {v0, v12}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 486
    check-cast v10, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;

    invoke-virtual {v14, v0, v10}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;

    move-result-object v10

    goto :goto_1

    :cond_5
    const-string v12, "ContentProtection"

    .line 487
    invoke-static {v0, v12}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 488
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->c(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;

    move-result-object v12

    move-object/from16 v19, v2

    .line 489
    iget-object v2, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v2, :cond_6

    .line 490
    iget-object v2, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v17, v2

    check-cast v17, Ljava/lang/String;

    .line 492
    :cond_6
    iget-object v2, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v2, :cond_9

    .line 493
    iget-object v2, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    move-object/from16 v19, v2

    const-string v2, "InbandEventStream"

    .line 495
    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "InbandEventStream"

    .line 496
    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    const-string v2, "SupplementalProperty"

    .line 497
    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "SupplementalProperty"

    .line 498
    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_2
    move-object/from16 v20, v17

    move-object/from16 v17, v10

    const-string v2, "Representation"

    .line 500
    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    move-object v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move/from16 v6, v16

    move-object/from16 v9, p10

    move/from16 v10, p11

    move-object/from16 v21, v11

    move-object/from16 v11, p12

    move-object/from16 v12, v18

    move-object/from16 v22, v13

    move-object/from16 v13, v21

    .line 502
    invoke-virtual/range {v0 .. v13}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->a(Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;ILjava/util/List;Ljava/lang/String;Ljava/util/List;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    if-eqz v17, :cond_a

    goto :goto_3

    .line 505
    :cond_a
    new-instance v1, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;-><init>()V

    move-object/from16 v17, v1

    .line 507
    :goto_3
    new-instance v1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;

    const-wide/16 v2, -0x1

    move-object/from16 p1, v1

    move-object/from16 p2, v0

    move-object/from16 p3, v19

    move-object/from16 p4, v17

    move-object/from16 p5, v20

    move-object/from16 p6, v15

    move-object/from16 p7, v22

    move-wide/from16 p8, v2

    invoke-direct/range {p1 .. p9}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;-><init>(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;J)V

    return-object v1

    :cond_b
    move-object/from16 v10, v17

    move-object/from16 v12, v18

    move-object/from16 v2, v19

    move-object/from16 v17, v20

    goto/16 :goto_0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;J[J[Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;)Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;
    .locals 8

    .line 730
    new-instance v7, Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;-><init>(Ljava/lang/String;Ljava/lang/String;J[J[Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;)V

    return-object v7
.end method

.method protected a(Ljava/lang/String;JLjava/util/List;Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/Period;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;",
            ">;)",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Period;"
        }
    .end annotation

    .line 232
    new-instance v6, Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-object v0, v6

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/dash/manifest/Period;-><init>(Ljava/lang/String;JLjava/util/List;Ljava/util/List;)V

    return-object v6
.end method

.method protected a(Ljava/lang/String;JJ)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .locals 7

    .line 889
    new-instance v6, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-object v0, v6

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;-><init>(Ljava/lang/String;JJ)V

    return-object v6
.end method

.method protected a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .locals 7

    const/4 v0, 0x0

    .line 874
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 877
    invoke-interface {p1, v0, p3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-wide/16 p2, -0x1

    if-eqz p1, :cond_0

    const-string v0, "-"

    .line 879
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 880
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 881
    array-length v3, p1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const/4 p2, 0x1

    .line 882
    aget-object p1, p1, p2

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    sub-long/2addr p1, v0

    const-wide/16 v3, 0x1

    add-long/2addr p1, v3

    move-wide v5, p1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :cond_1
    move-wide v5, p2

    :goto_0
    move-wide v3, v0

    move-object v1, p0

    .line 885
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->a(Ljava/lang/String;JJ)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;)",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Representation;"
        }
    .end annotation

    .line 546
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;->a:Lcom/google/android/exoplayer2/Format;

    .line 547
    iget-object v1, p1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object p3, p1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;->d:Ljava/lang/String;

    .line 549
    :cond_0
    iget-object v1, p1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;->e:Ljava/util/ArrayList;

    .line 550
    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 551
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_1

    .line 552
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->a(Ljava/util/ArrayList;)V

    .line 553
    new-instance p4, Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-direct {p4, p3, v1}, Lcom/google/android/exoplayer2/drm/DrmInitData;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 554
    invoke-virtual {v0, p4}, Lcom/google/android/exoplayer2/Format;->a(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    :cond_1
    move-object v4, v0

    .line 556
    iget-object v7, p1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;->f:Ljava/util/ArrayList;

    .line 557
    invoke-virtual {v7, p5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 558
    iget-wide v2, p1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;->g:J

    iget-object v5, p1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;->b:Ljava/lang/String;

    iget-object v6, p1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;->c:Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;

    move-object v1, p2

    invoke-static/range {v1 .. v7}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->a(Ljava/lang/String;JLcom/google/android/exoplayer2/Format;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJJJLjava/util/List;Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;",
            "JJJJ",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;",
            ">;)",
            "Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;"
        }
    .end annotation

    .line 643
    new-instance v12, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;

    move-object v0, v12

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;-><init>(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJJJLjava/util/List;Ljava/util/List;)V

    return-object v12
.end method

.method protected a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "timescale"

    const-wide/16 v3, 0x1

    if-eqz v1, :cond_0

    .line 601
    iget-wide v5, v1, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;->b:J

    goto :goto_0

    :cond_0
    move-wide v5, v3

    :goto_0
    invoke-static {v0, v2, v5, v6}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    const-string v2, "presentationTimeOffset"

    if-eqz v1, :cond_1

    .line 602
    iget-wide v5, v1, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;->c:J

    goto :goto_1

    :cond_1
    const-wide/16 v5, 0x0

    :goto_1
    invoke-static {v0, v2, v5, v6}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v11

    const-string v2, "duration"

    if-eqz v1, :cond_2

    .line 604
    iget-wide v5, v1, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;->e:J

    goto :goto_2

    :cond_2
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    :goto_2
    invoke-static {v0, v2, v5, v6}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v15

    const-string v2, "startNumber"

    if-eqz v1, :cond_3

    .line 605
    iget-wide v3, v1, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;->d:J

    :cond_3
    invoke-static {v0, v2, v3, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v13

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    .line 612
    :cond_4
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v5, "Initialization"

    .line 613
    invoke-static {v0, v5}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 614
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->h(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v3

    goto :goto_3

    :cond_5
    const-string v5, "SegmentTimeline"

    .line 615
    invoke-static {v0, v5}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 616
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->g(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v4

    goto :goto_3

    :cond_6
    const-string v5, "SegmentURL"

    .line 617
    invoke-static {v0, v5}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    if-nez v2, :cond_7

    .line 619
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 621
    :cond_7
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->i(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_3
    const-string v5, "SegmentList"

    .line 623
    invoke-static {v0, v5}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v1, :cond_c

    if-eqz v3, :cond_9

    goto :goto_4

    .line 626
    :cond_9
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;->a:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    :goto_4
    if-eqz v4, :cond_a

    goto :goto_5

    .line 627
    :cond_a
    iget-object v4, v1, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;->f:Ljava/util/List;

    :goto_5
    if-eqz v2, :cond_b

    goto :goto_6

    .line 628
    :cond_b
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;->g:Ljava/util/List;

    :cond_c
    :goto_6
    move-object/from16 v18, v2

    move-object v8, v3

    move-object/from16 v17, v4

    move-object/from16 v7, p0

    .line 631
    invoke-virtual/range {v7 .. v18}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->a(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJJJLjava/util/List;Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJJJLjava/util/List;Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;",
            "JJJJ",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;",
            ">;",
            "Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;",
            "Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;",
            ")",
            "Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;"
        }
    .end annotation

    .line 689
    new-instance v13, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;

    move-object v0, v13

    move-object v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;-><init>(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJJJLjava/util/List;Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;)V

    return-object v13
.end method

.method protected a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v13, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "timescale"

    const-wide/16 v3, 0x1

    if-eqz v1, :cond_0

    .line 649
    iget-wide v5, v1, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->b:J

    goto :goto_0

    :cond_0
    move-wide v5, v3

    :goto_0
    invoke-static {v0, v2, v5, v6}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v5

    const-string v2, "presentationTimeOffset"

    if-eqz v1, :cond_1

    .line 650
    iget-wide v7, v1, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->c:J

    goto :goto_1

    :cond_1
    const-wide/16 v7, 0x0

    :goto_1
    invoke-static {v0, v2, v7, v8}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v7

    const-string v2, "duration"

    if-eqz v1, :cond_2

    .line 652
    iget-wide v9, v1, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->e:J

    goto :goto_2

    :cond_2
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    :goto_2
    invoke-static {v0, v2, v9, v10}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    const-string v2, "startNumber"

    if-eqz v1, :cond_3

    .line 653
    iget-wide v3, v1, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->d:J

    :cond_3
    invoke-static {v0, v2, v3, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v11

    const-string v2, "media"

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 654
    iget-object v4, v1, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->h:Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;

    goto :goto_3

    :cond_4
    move-object v4, v3

    :goto_3
    invoke-virtual {v13, v0, v2, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;)Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;

    move-result-object v14

    const-string v2, "initialization"

    if-eqz v1, :cond_5

    .line 656
    iget-object v4, v1, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->g:Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;

    goto :goto_4

    :cond_5
    move-object v4, v3

    :goto_4
    invoke-virtual {v13, v0, v2, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;)Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;

    move-result-object v15

    move-object v2, v3

    .line 663
    :cond_6
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v4, "Initialization"

    .line 664
    invoke-static {v0, v4}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 665
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->h(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v3

    goto :goto_5

    :cond_7
    const-string v4, "SegmentTimeline"

    .line 666
    invoke-static {v0, v4}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 667
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->g(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v2

    :cond_8
    :goto_5
    const-string v4, "SegmentTemplate"

    .line 669
    invoke-static {v0, v4}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    if-eqz v1, :cond_b

    if-eqz v3, :cond_9

    goto :goto_6

    .line 672
    :cond_9
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->a:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    :goto_6
    if-eqz v2, :cond_a

    goto :goto_7

    .line 673
    :cond_a
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->f:Ljava/util/List;

    :cond_b
    :goto_7
    move-object/from16 v16, v2

    move-object v1, v3

    move-object/from16 v0, p0

    move-wide v2, v5

    move-wide v4, v7

    move-wide v6, v11

    move-wide v8, v9

    move-object/from16 v10, v16

    move-object v11, v15

    move-object v12, v14

    .line 676
    invoke-virtual/range {v0 .. v12}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->a(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJJJLjava/util/List;Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;

    move-result-object v0

    return-object v0
.end method

.method protected a(JJ)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;
    .locals 1

    .line 852
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;-><init>(JJ)V

    return-object v0
.end method

.method protected a(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJJJ)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;
    .locals 11

    .line 594
    new-instance v10, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    move-object v0, v10

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;-><init>(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJJJ)V

    return-object v10
.end method

.method protected a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "timescale"

    const-wide/16 v3, 0x1

    if-eqz v1, :cond_0

    .line 567
    iget-wide v5, v1, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;->b:J

    goto :goto_0

    :cond_0
    move-wide v5, v3

    :goto_0
    invoke-static {v0, v2, v5, v6}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    const-string v2, "presentationTimeOffset"

    const-wide/16 v5, 0x0

    if-eqz v1, :cond_1

    .line 568
    iget-wide v7, v1, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;->c:J

    goto :goto_1

    :cond_1
    move-wide v7, v5

    :goto_1
    invoke-static {v0, v2, v7, v8}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v11

    if-eqz v1, :cond_2

    .line 571
    iget-wide v7, v1, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;->d:J

    goto :goto_2

    :cond_2
    move-wide v7, v5

    :goto_2
    if-eqz v1, :cond_3

    .line 572
    iget-wide v5, v1, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;->e:J

    :cond_3
    const-string v2, "indexRange"

    const/4 v13, 0x0

    .line 573
    invoke-interface {v0, v13, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v5, "-"

    .line 575
    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    .line 576
    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    const/4 v7, 0x1

    .line 577
    aget-object v2, v2, v7

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    sub-long/2addr v7, v5

    add-long/2addr v7, v3

    move-wide v15, v7

    goto :goto_3

    :cond_4
    move-wide v15, v5

    move-wide v5, v7

    :goto_3
    if-eqz v1, :cond_5

    .line 580
    iget-object v13, v1, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;->a:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    .line 582
    :cond_5
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v1, "Initialization"

    .line 583
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 584
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->h(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v1

    move-object v13, v1

    :cond_6
    const-string v1, "SegmentBase"

    .line 586
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object/from16 v7, p0

    move-object v8, v13

    move-wide v13, v5

    .line 588
    invoke-virtual/range {v7 .. v16}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->a(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJJJ)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;)Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;
    .locals 1

    const/4 v0, 0x0

    .line 857
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 859
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;->a(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p3
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;
    .locals 1

    .line 195
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;
    .locals 3

    const-string v0, "schemeIdUri"

    const/4 v1, 0x0

    .line 189
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "value"

    .line 190
    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 191
    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/ByteArrayOutputStream;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 774
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 775
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    const/4 v1, 0x0

    .line 776
    invoke-interface {v0, p2, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 779
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    :goto_0
    const-string v2, "Event"

    .line 780
    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 781
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    .line 817
    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->docdecl(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 814
    :pswitch_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    goto :goto_2

    .line 811
    :pswitch_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->processingInstruction(Ljava/lang/String;)V

    goto :goto_2

    .line 808
    :pswitch_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->ignorableWhitespace(Ljava/lang/String;)V

    goto :goto_2

    .line 805
    :pswitch_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->entityRef(Ljava/lang/String;)V

    goto :goto_2

    .line 802
    :pswitch_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->cdsect(Ljava/lang/String;)V

    goto :goto_2

    .line 799
    :pswitch_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2

    .line 796
    :pswitch_7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2

    .line 789
    :pswitch_8
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 790
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    if-ge v3, v2, :cond_0

    .line 791
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    .line 792
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    .line 791
    invoke-interface {v0, v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 786
    :pswitch_9
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    goto :goto_2

    .line 783
    :pswitch_a
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 821
    :cond_0
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    goto/16 :goto_0

    .line 823
    :cond_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 824
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected b(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 2

    const-string v0, "contentType"

    const/4 v1, 0x0

    .line 324
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 325
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "audio"

    .line 326
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "video"

    .line 327
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const-string v0, "text"

    .line 328
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v1, 0x3

    :cond_3
    :goto_0
    return v1
.end method

.method public synthetic b(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->a(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move-result-object p1

    return-object p1
.end method

.method protected c(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "schemeIdUri"

    const/4 v1, 0x0

    .line 362
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    .line 364
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, 0x1d2c5beb

    if-eq v5, v6, :cond_2

    const v6, 0x2d06c692

    if-eq v5, v6, :cond_1

    const v6, 0x6c0c9d2a

    if-eq v5, v6, :cond_0

    goto :goto_0

    :cond_0
    const-string v5, "urn:mpeg:dash:mp4protection:2011"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v5, "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    const-string v5, "urn:uuid:9a04f079-9840-4286-ab92-e65be0885f95"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_4

    .line 383
    :pswitch_0
    sget-object v0, Lcom/google/android/exoplayer2/C;->e:Ljava/util/UUID;

    goto :goto_2

    .line 380
    :pswitch_1
    sget-object v0, Lcom/google/android/exoplayer2/C;->f:Ljava/util/UUID;

    :goto_2
    move-object v4, v1

    goto :goto_5

    :pswitch_2
    const-string v0, "value"

    .line 366
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "cenc:default_KID"

    .line 367
    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 368
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "00000000-0000-0000-0000-000000000000"

    .line 369
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "\\s+"

    .line 370
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 371
    array-length v5, v4

    new-array v5, v5, [Ljava/util/UUID;

    const/4 v6, 0x0

    .line 372
    :goto_3
    array-length v7, v4

    if-ge v6, v7, :cond_4

    .line 373
    aget-object v7, v4, v6

    invoke-static {v7}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v7

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 375
    :cond_4
    sget-object v4, Lcom/google/android/exoplayer2/C;->c:Ljava/util/UUID;

    invoke-static {v4, v5, v1}, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil;->a(Ljava/util/UUID;[Ljava/util/UUID;[B)[B

    move-result-object v4

    .line 376
    sget-object v5, Lcom/google/android/exoplayer2/C;->c:Ljava/util/UUID;

    move-object v6, v0

    move-object v0, v5

    goto :goto_6

    :cond_5
    move-object v6, v0

    move-object v0, v1

    move-object v4, v0

    goto :goto_6

    :cond_6
    :goto_4
    move-object v0, v1

    move-object v4, v0

    :goto_5
    move-object v6, v4

    :goto_6
    const/4 v5, 0x0

    .line 391
    :cond_7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v7, "widevine:license"

    .line 392
    invoke-static {p1, v7}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string v5, "robustness_level"

    .line 393
    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    const-string v7, "HW"

    .line 394
    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x1

    goto :goto_7

    :cond_8
    const/4 v5, 0x0

    goto :goto_7

    :cond_9
    if-nez v4, :cond_c

    const-string v7, "cenc:pssh"

    .line 396
    invoke-static {p1, v7}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x4

    if-eqz v7, :cond_b

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-ne v7, v8, :cond_b

    .line 398
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 399
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil;->a([B)Ljava/util/UUID;

    move-result-object v4

    if-nez v4, :cond_a

    const-string v0, "MpdParser"

    const-string v7, "Skipping malformed cenc:pssh data"

    .line 401
    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    move-object v4, v1

    goto :goto_7

    :cond_a
    move-object v9, v4

    move-object v4, v0

    move-object v0, v9

    goto :goto_7

    .line 404
    :cond_b
    sget-object v7, Lcom/google/android/exoplayer2/C;->f:Ljava/util/UUID;

    invoke-virtual {v7, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    const-string v7, "mspr:pro"

    invoke-static {p1, v7}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 405
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-ne v7, v8, :cond_c

    .line 407
    sget-object v4, Lcom/google/android/exoplayer2/C;->f:Ljava/util/UUID;

    .line 408
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    .line 407
    invoke-static {v4, v7}, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil;->a(Ljava/util/UUID;[B)[B

    move-result-object v4

    :cond_c
    :goto_7
    const-string v7, "ContentProtection"

    .line 411
    invoke-static {p1, v7}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    if-eqz v0, :cond_d

    .line 412
    new-instance v1, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    const-string p1, "video/mp4"

    invoke-direct {v1, v0, p1, v4, v5}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[BZ)V

    .line 414
    :cond_d
    invoke-static {v6, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected d(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "schemeIdUri"

    const/4 v1, 0x0

    .line 426
    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "value"

    .line 427
    invoke-static {p1, v2, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 429
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v2, "Role"

    .line 430
    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "urn:mpeg:dash:role:2011"

    .line 431
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "main"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected e(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected f(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "schemeIdUri"

    const-string v1, ""

    .line 704
    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "value"

    const-string v2, ""

    .line 705
    invoke-static {p1, v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "timescale"

    const-wide/16 v3, 0x1

    .line 706
    invoke-static {p1, v2, v3, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    .line 707
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 708
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x200

    invoke-direct {v12, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 710
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v2, "Event"

    .line 711
    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    move-object v5, v1

    move-wide v6, v9

    move-object v8, v12

    .line 712
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;JLjava/io/ByteArrayOutputStream;)Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    move-result-object v2

    .line 714
    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v2, "EventStream"

    .line 716
    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 718
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result p1

    new-array v7, p1, [J

    .line 719
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result p1

    new-array v8, p1, [Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    const/4 p1, 0x0

    .line 720
    :goto_0
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 721
    invoke-interface {v11, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    .line 722
    iget-wide v3, v2, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;->d:J

    aput-wide v3, v7, p1

    .line 723
    aput-object v2, v8, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    move-object v2, p0

    move-object v3, v0

    move-object v4, v1

    move-wide v5, v9

    .line 725
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->a(Ljava/lang/String;Ljava/lang/String;J[J[Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;)Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;

    move-result-object p1

    return-object p1
.end method

.method protected g(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 834
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x0

    .line 837
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v3, "S"

    .line 838
    invoke-static {p1, v3}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "t"

    .line 839
    invoke-static {p1, v3, v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v1

    const-string v3, "d"

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 840
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v3

    const-string v5, "r"

    const/4 v6, 0x0

    .line 841
    invoke-static {p1, v5, v6}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    :goto_0
    if-ge v6, v5, :cond_1

    .line 843
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->a(JJ)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-long/2addr v1, v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const-string v3, "SegmentTimeline"

    .line 847
    invoke-static {p1, v3}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v0
.end method

.method protected h(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .locals 2

    const-string v0, "sourceURL"

    const-string v1, "range"

    .line 865
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object p1

    return-object p1
.end method

.method protected i(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .locals 2

    const-string v0, "media"

    const-string v1, "mediaRange"

    .line 869
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object p1

    return-object p1
.end method

.method protected j(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "schemeIdUri"

    const/4 v1, 0x0

    .line 896
    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "urn:mpeg:dash:23003:3:audio_channel_configuration:2011"

    .line 897
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    const-string v0, "value"

    .line 898
    invoke-static {p1, v0, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    :cond_0
    const-string v1, "tag:dolby.com,2014:dash:audio_channel_configuration:2011"

    .line 899
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 900
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->k(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v2

    .line 902
    :cond_1
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v0, "AudioChannelConfiguration"

    .line 903
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2
.end method
