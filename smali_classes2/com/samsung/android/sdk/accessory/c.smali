.class public Lcom/samsung/android/sdk/accessory/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static c:Lcom/samsung/android/sdk/accessory/c;


# instance fields
.field private final d:Landroid/content/Context;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/accessory/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[SA_SDK]"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/samsung/android/sdk/accessory/c;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/accessory/c;->a:Ljava/lang/String;

    const-string v0, "ANY"

    const-string v1, "ONE_ACCESSORY"

    const-string v2, "ONE_PEERAGENT"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/accessory/c;->b:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/c;->e:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/c;->d:Landroid/content/Context;

    return-void
.end method

.method static declared-synchronized a(Landroid/content/Context;)Lcom/samsung/android/sdk/accessory/c;
    .locals 2

    const-class v0, Lcom/samsung/android/sdk/accessory/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/accessory/c;->c:Lcom/samsung/android/sdk/accessory/c;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/sdk/accessory/c;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/accessory/c;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/sdk/accessory/c;->c:Lcom/samsung/android/sdk/accessory/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_1
    sget-object p0, Lcom/samsung/android/sdk/accessory/c;->c:Lcom/samsung/android/sdk/accessory/c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to parse the accessory services configuration file :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private declared-synchronized a()Z
    .locals 15

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/samsung/android/sdk/accessory/c;->a:Ljava/lang/String;

    const-string v2, "Parse Accssory Service profile xml file"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/c;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/sdk/accessory/n;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/accessory/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessory/n;->a()[B

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    array-length v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4, v3}, Ljava/lang/String;-><init>([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v5, Ljava/io/StringReader;

    invoke-direct {v5, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    if-eqz v1, :cond_1

    :try_start_2
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Wrong Schema of xml file. Please check"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/4 v5, 0x0

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    :cond_2
    :goto_1
    if-eq v2, v3, :cond_14

    if-nez v2, :cond_3

    sget-object v9, Lcom/samsung/android/sdk/accessory/c;->a:Ljava/lang/String;

    const-string v10, "Start document"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_3
    const/4 v9, 0x2

    if-ne v2, v9, :cond_10

    if-eqz v1, :cond_10

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "application"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const-string v9, "name"

    invoke-interface {v1, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/sdk/accessory/c;->e:Ljava/lang/String;

    const-string v9, "application"

    iget-object v10, p0, Lcom/samsung/android/sdk/accessory/c;->e:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/samsung/android/sdk/accessory/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_4
    const-string v11, "serviceProfile"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    const-string v6, "serviceImpl"

    invoke-interface {v1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "serviceImpl"

    invoke-static {v7, v6}, Lcom/samsung/android/sdk/accessory/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "name"

    invoke-interface {v1, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "name"

    invoke-static {v8, v7}, Lcom/samsung/android/sdk/accessory/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "role"

    invoke-interface {v1, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "role"

    invoke-static {v10, v8}, Lcom/samsung/android/sdk/accessory/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "id"

    invoke-interface {v1, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "id"

    invoke-static {v10, v8}, Lcom/samsung/android/sdk/accessory/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "version"

    invoke-interface {v1, v5, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "version"

    invoke-static {v11, v10}, Lcom/samsung/android/sdk/accessory/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "serviceLimit"

    invoke-interface {v1, v5, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_6

    sget-object v11, Lcom/samsung/android/sdk/accessory/c;->b:[Ljava/lang/String;

    aget-object v11, v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    goto :goto_2

    :cond_5
    sget-object v11, Lcom/samsung/android/sdk/accessory/c;->b:[Ljava/lang/String;

    aget-object v11, v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6

    sget-object v11, Lcom/samsung/android/sdk/accessory/c;->b:[Ljava/lang/String;

    aget-object v9, v11, v9

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    :cond_6
    :goto_2
    const-string v9, "serviceTimeout"

    invoke-interface {v1, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v9, :cond_7

    :try_start_4
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_1
    :cond_7
    move-object v14, v8

    move-object v8, v6

    move-object v6, v14

    goto/16 :goto_4

    :cond_8
    :try_start_5
    const-string v9, "transport"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const-string v9, "type"

    invoke-interface {v1, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "Transport"

    invoke-static {v10, v9}, Lcom/samsung/android/sdk/accessory/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "TRANSPORT_BT"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_13

    const-string v10, "TRANSPORT_WIFI"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_13

    const-string v10, "TRANSPORT_BLE"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_13

    const-string v10, "TRANSPORT_USB"

    :goto_3
    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    goto/16 :goto_4

    :cond_9
    const-string v9, "serviceChannel"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    const-string v9, "id"

    invoke-interface {v1, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "serviceChannel/id"

    invoke-static {v10, v9}, Lcom/samsung/android/sdk/accessory/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "dataRate"

    invoke-interface {v1, v5, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_a

    sget-object v10, Lcom/samsung/android/sdk/accessory/c;->a:Ljava/lang/String;

    const-string v11, "Parsing new attribute failed.Trying to access old attribute"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "qosDataRate"

    invoke-interface {v1, v5, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :cond_a
    const-string v11, "serviceChannel/qoSDataRate"

    invoke-static {v11, v10}, Lcom/samsung/android/sdk/accessory/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "priority"

    invoke-interface {v1, v5, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_b

    const-string v11, "qosPriority"

    invoke-interface {v1, v5, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :cond_b
    const-string v12, "serviceChannel/qoSPriority"

    invoke-static {v12, v11}, Lcom/samsung/android/sdk/accessory/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "reliability"

    invoke-interface {v1, v5, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_c

    const-string v12, "qosType"

    invoke-interface {v1, v5, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :cond_c
    const-string v13, "serviceChannel/qoSType"

    invoke-static {v13, v12}, Lcom/samsung/android/sdk/accessory/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "Low"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_d

    const-string v13, "High"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    :cond_d
    const-string v10, "Low"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_e

    const-string v10, "Medium"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_e

    const-string v10, "High"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    :cond_e
    const-string v10, "enable"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    new-instance v10, Lcom/samsung/android/sdk/accessory/l;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-direct {v10, v9}, Lcom/samsung/android/sdk/accessory/l;-><init>(I)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_f
    const-string v9, "feature"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    const-string v9, "type"

    invoke-interface {v1, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "Feature"

    invoke-static {v10, v9}, Lcom/samsung/android/sdk/accessory/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "message"

    goto/16 :goto_3

    :cond_10
    const/4 v9, 0x3

    if-ne v2, v9, :cond_12

    if-eqz v1, :cond_12

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "serviceProfile"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v9, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v10, Lcom/samsung/android/sdk/accessory/m;

    invoke-direct {v10, v6, v7, v8, v9}, Lcom/samsung/android/sdk/accessory/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    iget-object v6, p0, Lcom/samsung/android/sdk/accessory/c;->f:Ljava/util/HashMap;

    if-nez v6, :cond_11

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/samsung/android/sdk/accessory/c;->f:Ljava/util/HashMap;

    :cond_11
    iget-object v6, p0, Lcom/samsung/android/sdk/accessory/c;->f:Ljava/util/HashMap;

    invoke-virtual {v6, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    goto :goto_4

    :cond_12
    const/4 v9, 0x4

    if-ne v2, v9, :cond_13

    if-eqz v1, :cond_13

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_13
    :goto_4
    if-eqz v1, :cond_2

    :try_start_6
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    :catch_2
    :try_start_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to parse the accessory services configuration file"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to parse the accessory services configuration file"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    sget-object v0, Lcom/samsung/android/sdk/accessory/c;->a:Ljava/lang/String;

    const-string v1, "End document"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/c;->f:Ljava/util/HashMap;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v0, :cond_15

    monitor-exit p0

    return v3

    :cond_15
    :try_start_8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to parse the accessory services configuration file"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "XmlPullParserFactory Exception for Accssory Service profile XML file"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method final declared-synchronized a(Ljava/lang/String;)Lcom/samsung/android/sdk/accessory/m;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/c;->f:Ljava/util/HashMap;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/c;->a()Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/c;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/c;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/accessory/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    :try_start_1
    sget-object v0, Lcom/samsung/android/sdk/accessory/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fetchServicesDescription: Class not found in registered list"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
