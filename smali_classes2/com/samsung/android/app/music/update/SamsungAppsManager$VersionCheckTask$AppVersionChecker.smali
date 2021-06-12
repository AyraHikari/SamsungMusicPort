.class final Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckTask$AppVersionChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AppVersionChecker"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckTask;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Landroid/content/Context;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckTask;Landroid/content/Context;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckTask$AppVersionChecker;->a:Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "AppVersionChecker"

    .line 247
    iput-object p1, p0, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckTask$AppVersionChecker;->b:Ljava/lang/String;

    const-string p1, "460"

    .line 253
    iput-object p1, p0, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckTask$AppVersionChecker;->c:Ljava/lang/String;

    .line 302
    iput-object p2, p0, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckTask$AppVersionChecker;->d:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckTask;Landroid/content/Context;Lcom/samsung/android/app/music/update/SamsungAppsManager$1;)V
    .locals 0

    .line 245
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckTask$AppVersionChecker;-><init>(Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckTask;Landroid/content/Context;)V

    return-void
.end method

.method private a(Lcom/samsung/android/app/music/update/SamsungAppsManager$UrlParams;)Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckTask$StubUpdateInfo;
    .locals 3

    .line 306
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckTask$AppVersionChecker;->b(Lcom/samsung/android/app/music/update/SamsungAppsManager$UrlParams;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckTask$AppVersionChecker;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckTask$StubUpdateInfo;

    move-result-object p1

    const-string v0, "AppVersionChecker"

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getStubUpdateInfo - stubUpdateInfo : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckTask$AppVersionChecker;Lcom/samsung/android/app/music/update/SamsungAppsManager$UrlParams;)Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckTask$StubUpdateInfo;
    .locals 0

    .line 245
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckTask$AppVersionChecker;->a(Lcom/samsung/android/app/music/update/SamsungAppsManager$UrlParams;)Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckTask$StubUpdateInfo;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckTask$StubUpdateInfo;
    .locals 11
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 351
    new-instance v0, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckTask$StubUpdateInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckTask$StubUpdateInfo;-><init>()V

    const/4 v1, 0x0

    .line 354
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 355
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x4e20

    .line 356
    :try_start_1
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 357
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 358
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 360
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 361
    new-instance v3, Lorg/xml/sax/InputSource;

    invoke-direct {v3, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 362
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 363
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    .line 365
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 367
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 368
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 369
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 370
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    const/4 v7, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, 0x290b12e5

    if-eq v8, v9, :cond_1

    const v9, 0x2c0c1741

    if-eq v8, v9, :cond_0

    goto :goto_1

    :cond_0
    const-string v8, "extraValue"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_1
    const-string v6, "versionCode"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v6, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v6, -0x1

    :goto_2
    packed-switch v6, :pswitch_data_0

    goto :goto_3

    .line 376
    :pswitch_0
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v4

    const-string v5, "forceUpdateVersionCode"

    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckTask$AppVersionChecker;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckTask$StubUpdateInfo;->b:Ljava/lang/String;

    goto :goto_3

    .line 372
    :pswitch_1
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckTask$StubUpdateInfo;->a:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    .line 388
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object p1, v1

    goto :goto_5

    :catch_1
    move-exception p1

    move-object v10, v1

    move-object v1, p1

    move-object p1, v10

    :goto_4
    :try_start_2
    const-string v2, "AppVersionChecker"

    const-string v3, "Failed to check stub update!"

    .line 384
    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_6

    .line 388
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    return-object v0

    :catchall_1
    move-exception v0

    :goto_5
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a()Ljava/lang/String;
    .locals 5

    .line 417
    iget-object v0, p0, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckTask$AppVersionChecker;->d:Landroid/content/Context;

    const-string v1, "phone"

    .line 418
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 421
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 422
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    .line 423
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppVersionChecker"

    .line 424
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMcc : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "AppVersionChecker"

    .line 426
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMcc - operator : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 337
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 338
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object p1

    .line 340
    :try_start_0
    invoke-interface {p1, p2, v0}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Lorg/xml/sax/InputSource;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppVersionChecker"

    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getValue  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 344
    invoke-virtual {p1}, Ljavax/xml/xpath/XPathExpressionException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private b()Ljava/lang/String;
    .locals 3

    const-string v0, "460"

    .line 432
    invoke-direct {p0}, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckTask$AppVersionChecker;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "https://cn-ms.samsungapps.com/getCNVasURL.as"

    const-string v2, "/result/serverInfo/serverURL[1]"

    .line 435
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckTask$AppVersionChecker;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/stub/stubUpdateCheck.as"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "https://vas.samsungapps.com/stub/stubUpdateCheck.as"

    :goto_0
    return-object v0
.end method

.method private b(Lcom/samsung/android/app/music/update/SamsungAppsManager$UrlParams;)Ljava/lang/String;
    .locals 3

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckTask$AppVersionChecker;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/app/music/update/SamsungAppsManager$UrlParams;->a(Lcom/samsung/android/app/music/update/SamsungAppsManager$UrlParams;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppVersionChecker"

    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVersionCheckUrl - url : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 320
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x4e20

    .line 322
    :try_start_1
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 323
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 324
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 325
    invoke-direct {p0, v1, p2}, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckTask$AppVersionChecker;->a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_0

    .line 330
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-object p2

    :catch_0
    move-exception p2

    goto :goto_0

    :catchall_0
    move-exception p2

    move-object p1, v0

    goto :goto_1

    :catch_1
    move-exception p2

    move-object p1, v0

    .line 327
    :goto_0
    :try_start_2
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_1

    .line 330
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    return-object v0

    :catchall_1
    move-exception p2

    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    throw p2
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, ""

    const-string v1, "&"

    .line 402
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 403
    array-length v1, p1

    const/4 v2, 0x0

    move-object v3, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v4, p1, v0

    const-string v5, "="

    .line 404
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 405
    aget-object v5, v4, v2

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x1

    .line 406
    aget-object v3, v4, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v3
.end method
