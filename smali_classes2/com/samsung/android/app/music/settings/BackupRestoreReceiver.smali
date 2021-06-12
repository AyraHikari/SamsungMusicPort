.class public Lcom/samsung/android/app/music/settings/BackupRestoreReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/os/Bundle;)I
    .locals 4

    const-string v0, "ACTION"

    .line 142
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    const-string p1, "SMUSIC-Backup"

    .line 153
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Sender\'s extra action is unknown. Please check restore request. operation : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    return p1

    :cond_0
    return v1

    :cond_1
    const-string v0, "SAVE_PATH"

    .line 145
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "SESSION_KEY"

    .line 146
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SECURITY_LEVEL"

    .line 147
    invoke-virtual {p2, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 148
    invoke-direct {p0, p1, v0, v2, p2}, Lcom/samsung/android/app/music/settings/BackupRestoreReceiver;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 4

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "music_settings.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 170
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3, p3, p4}, Lcom/samsung/android/app/music/settings/BackupRestoreReceiver;->a(Ljava/io/InputStream;Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object p3
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 190
    :try_start_1
    invoke-direct {p0, p3}, Lcom/samsung/android/app/music/settings/BackupRestoreReceiver;->a(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object p4

    .line 191
    invoke-direct {p0, p1, p4}, Lcom/samsung/android/app/music/settings/BackupRestoreReceiver;->a(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 194
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/provider/BackupRestoreUtil;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p3, :cond_0

    .line 205
    :try_start_2
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 207
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    move-object v2, p3

    goto :goto_5

    :catch_1
    move-exception p1

    move-object v2, p3

    goto :goto_1

    :catch_2
    move-exception p1

    move-object v2, p3

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_3
    move-exception p1

    :goto_1
    :try_start_3
    const-string p2, "SMUSIC-Backup"

    .line 200
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "restore err "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_1

    .line 205
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_2

    :catch_4
    move-exception p1

    .line 207
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_2
    return v1

    :catch_5
    move-exception p1

    :goto_3
    :try_start_5
    const-string p2, "SMUSIC-Backup"

    .line 197
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "restore err "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_2

    .line 205
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_4

    :catch_6
    move-exception p1

    .line 207
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_4
    return v1

    :goto_5
    if-eqz v2, :cond_3

    .line 205
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_6

    :catch_7
    move-exception p2

    .line 207
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 208
    :cond_3
    :goto_6
    throw p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/settings/BackupRestoreReceiver;Landroid/content/Context;Landroid/os/Bundle;)I
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/settings/BackupRestoreReceiver;->b(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result p0

    return p0
.end method

.method private a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    .line 289
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    const/4 v1, 0x1

    .line 291
    :try_start_0
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 292
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    const-string v2, "http://www.samsung.com/app/music/settings"

    const-string v3, "MusicSettings"

    .line 294
    invoke-interface {v0, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 295
    invoke-interface {v0, v2}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 297
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 298
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v0, v4, v3}, Lcom/samsung/android/app/music/settings/BackupRestoreReceiver;->a(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    .line 302
    :cond_0
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object p1

    .line 303
    invoke-virtual {p1}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object p1

    .line 304
    new-instance v2, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v2, v0}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_9

    const/4 v0, 0x0

    .line 310
    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 311
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 314
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 315
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "fail to delete"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 319
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 323
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 327
    :goto_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 328
    new-instance v4, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v4, v3}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    .line 329
    invoke-virtual {p1, v2, v4}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 330
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 333
    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2, p3, p4}, Lcom/samsung/android/app/music/settings/BackupRestoreReceiver;->a(Ljava/io/OutputStream;Ljava/lang/String;I)Ljava/io/OutputStream;

    move-result-object p3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 p4, 0x400

    .line 337
    :try_start_3
    new-array v0, p4, [B

    :cond_3
    :goto_2
    const/4 v2, 0x0

    .line 338
    invoke-virtual {p1, v0, v2, p4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    .line 339
    invoke-virtual {p3, v0, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    if-ge v3, p4, :cond_3

    .line 342
    rem-int/lit8 v3, v3, 0x10

    rsub-int/lit8 v3, v3, 0x10

    .line 343
    new-array v4, v3, [B

    .line 344
    invoke-virtual {p3, v4, v2, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 355
    :cond_4
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_4 .. :try_end_4} :catch_9

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_5
    const-string p4, "SMUSIC-Backup"

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to close InputStream : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_5 .. :try_end_5} :catch_9

    :goto_3
    if-eqz p3, :cond_5

    .line 362
    :try_start_6
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_6 .. :try_end_6} :catch_9

    goto :goto_4

    :catch_1
    move-exception p1

    :try_start_7
    const-string p3, "SMUSIC-Backup"

    .line 364
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fail to close FileOutputStream : "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_7 .. :try_end_7} :catch_9

    :cond_5
    :goto_4
    const-string p1, "Backup"

    .line 378
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, " path : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :catchall_0
    move-exception p2

    goto :goto_5

    :catch_2
    move-exception p2

    goto :goto_6

    :catchall_1
    move-exception p2

    move-object p3, v0

    :goto_5
    move-object v0, p1

    move-object p1, p2

    goto/16 :goto_a

    :catch_3
    move-exception p2

    move-object p3, v0

    :goto_6
    move-object v0, p1

    move-object p1, p2

    goto :goto_7

    .line 321
    :cond_6
    :try_start_8
    new-instance p1, Ljava/io/IOException;

    const-string p2, "fail access parent file"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception p1

    move-object p3, v0

    goto :goto_a

    :catch_4
    move-exception p1

    move-object p3, v0

    :goto_7
    :try_start_9
    const-string p2, "SMUSIC-Backup"

    .line 350
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveEncryptedFile err "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz v0, :cond_7

    .line 355
    :try_start_a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_a .. :try_end_a} :catch_a
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_a .. :try_end_a} :catch_9

    goto :goto_8

    :catch_5
    move-exception p1

    :try_start_b
    const-string p2, "SMUSIC-Backup"

    .line 357
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fail to close InputStream : "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_b .. :try_end_b} :catch_a
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_b .. :try_end_b} :catch_9

    :cond_7
    :goto_8
    if-eqz p3, :cond_8

    .line 362
    :try_start_c
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_c .. :try_end_c} :catch_a
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_c .. :try_end_c} :catch_9

    goto :goto_9

    :catch_6
    move-exception p1

    :try_start_d
    const-string p2, "SMUSIC-Backup"

    .line 364
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "fail to close FileOutputStream : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_d .. :try_end_d} :catch_a
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_d .. :try_end_d} :catch_9

    :cond_8
    :goto_9
    return v1

    :catchall_3
    move-exception p1

    :goto_a
    if-eqz v0, :cond_9

    .line 355
    :try_start_e
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_e .. :try_end_e} :catch_a
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_e .. :try_end_e} :catch_9

    goto :goto_b

    :catch_7
    move-exception p2

    :try_start_f
    const-string p4, "SMUSIC-Backup"

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to close InputStream : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_f .. :try_end_f} :catch_a
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_f .. :try_end_f} :catch_9

    :cond_9
    :goto_b
    if-eqz p3, :cond_a

    .line 362
    :try_start_10
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_8
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_10 .. :try_end_10} :catch_a
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_10 .. :try_end_10} :catch_9

    goto :goto_c

    :catch_8
    move-exception p2

    :try_start_11
    const-string p3, "SMUSIC-Backup"

    .line 364
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fail to close FileOutputStream : "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_a
    :goto_c
    throw p1
    :try_end_11
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_11 .. :try_end_11} :catch_a
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_11 .. :try_end_11} :catch_9

    :catch_9
    move-exception p1

    const-string p2, "SMUSIC-Backup"

    .line 372
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "saveEncryptedFile err"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/xml/transform/TransformerConfigurationException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_a
    move-exception p1

    const-string p2, "SMUSIC-Backup"

    .line 369
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "saveEncryptedFile err"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/xml/parsers/ParserConfigurationException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private a(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "music_service_pref"

    const/4 v1, 0x4

    .line 558
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/io/InputStream;Ljava/lang/String;I)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "AES/CBC/NoPadding"

    .line 439
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 442
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v1

    new-array v1, v1, [B

    .line 443
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    .line 445
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    if-lez p3, :cond_0

    const/16 p3, 0x10

    .line 449
    new-array p3, p3, [B

    .line 450
    invoke-virtual {p1, p3}, Ljava/io/InputStream;->read([B)I

    .line 451
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/music/settings/BackupRestoreReceiver;->a(Ljava/lang/String;[B)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object p2

    goto :goto_0

    .line 454
    :cond_0
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/settings/BackupRestoreReceiver;->a(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object p2

    :goto_0
    const/4 p3, 0x2

    .line 458
    invoke-virtual {v0, p3, p2, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 459
    new-instance p2, Ljavax/crypto/CipherInputStream;

    invoke-direct {p2, p1, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object p2
.end method

.method private a(Ljava/io/OutputStream;Ljava/lang/String;I)Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "AES/CBC/NoPadding"

    .line 385
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 388
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v1

    new-array v1, v1, [B

    .line 389
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 390
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 393
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    if-lez p3, :cond_0

    .line 397
    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/BackupRestoreReceiver;->a()[B

    move-result-object p3

    .line 398
    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write([B)V

    .line 399
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/music/settings/BackupRestoreReceiver;->a(Ljava/lang/String;[B)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object p2

    goto :goto_0

    .line 402
    :cond_0
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/settings/BackupRestoreReceiver;->a(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object p2

    :goto_0
    const/4 p3, 0x1

    .line 406
    invoke-virtual {v0, p3, p2, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 407
    new-instance p2, Ljavax/crypto/CipherOutputStream;

    invoke-direct {p2, p1, v0}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-object p2
.end method

.method private a(Ljava/io/InputStream;)Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    const/4 v1, 0x1

    .line 217
    invoke-virtual {v0, v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 219
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    const-string v2, "UTF-8"

    .line 220
    invoke-interface {v0, p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 222
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p1

    .line 223
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-eq p1, v1, :cond_5

    if-nez p1, :cond_0

    const-string v4, "Backup"

    const-string v5, "Start document"

    .line 227
    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 v4, 0x2

    if-ne p1, v4, :cond_1

    const-string v3, "Backup"

    .line 229
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start tag "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    const/4 v4, 0x3

    if-ne p1, v4, :cond_2

    const-string v4, "Backup"

    .line 232
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "End tag "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v4, 0x4

    if-ne p1, v4, :cond_4

    .line 234
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Backup"

    .line 235
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Text "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v4, "Backup"

    const-string v5, "Already exist tag!"

    .line 237
    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 239
    :cond_3
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    :cond_4
    :goto_1
    :try_start_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move p1, v4

    goto :goto_0

    :catch_0
    const-string v4, "Backup"

    .line 245
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "XmlPullParserException Event type 1 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1

    const-string v4, "Backup"

    .line 247
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "XmlPullParserException Event type 2 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string p1, "Backup"

    const-string v0, "End document"

    .line 250
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private a(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "SHA-256"

    .line 411
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "UTF-8"

    .line 412
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    const/16 p1, 0x10

    .line 413
    new-array p1, p1, [B

    .line 414
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 415
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method private a(Ljava/lang/String;[B)Ljavax/crypto/spec/SecretKeySpec;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 429
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    const-string v0, "PBKDF2WithHmacSHA1"

    .line 431
    invoke-static {v0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v0

    .line 432
    new-instance v1, Ljavax/crypto/spec/PBEKeySpec;

    const/16 v2, 0x3e8

    const/16 v3, 0x100

    invoke-direct {v1, p1, p2, v2, v3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 433
    invoke-virtual {v0, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p1

    .line 434
    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p1

    const-string v0, "AES"

    invoke-direct {p2, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object p2
.end method

.method private a(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 0

    .line 463
    invoke-interface {p1, p2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    .line 464
    invoke-interface {p1, p3}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object p2
.end method

.method private a(Landroid/content/Context;IIILandroid/os/Bundle;)V
    .locals 2

    .line 608
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.intent.action.RESPONSE_RESTORE_MUSIC_SETTING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "RESULT"

    .line 609
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "ERR_CODE"

    .line 610
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "REQ_SIZE"

    .line 611
    invoke-virtual {v0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "SOURCE"

    const-string p3, "SOURCE"

    .line 612
    invoke-virtual {p5, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "com.wssnps.permission.COM_WSSNPS"

    .line 613
    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 474
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/settings/BackupRestoreReceiver;->b(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 475
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/settings/BackupRestoreReceiver;->c(Landroid/content/Context;Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/settings/BackupRestoreReceiver;Landroid/content/Context;IIILandroid/os/Bundle;)V
    .locals 0

    .line 73
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/app/music/settings/BackupRestoreReceiver;->b(Landroid/content/Context;IIILandroid/os/Bundle;)V

    return-void
.end method

.method private a()[B
    .locals 2

    .line 419
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v1, 0x10

    .line 420
    new-array v1, v1, [B

    .line 421
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v1
.end method

.method private b(Landroid/content/Context;Landroid/os/Bundle;)I
    .locals 4

    const-string v0, "ACTION"

    .line 255
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    const-string p1, "SMUSIC-Backup"

    .line 266
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Sender\'s extra action is unknown. Please check backup request. operation : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    return p1

    :cond_0
    return v1

    :cond_1
    const-string v0, "SAVE_PATH"

    .line 258
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "SESSION_KEY"

    .line 259
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SECURITY_LEVEL"

    .line 260
    invoke-virtual {p2, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 261
    invoke-direct {p0, p1, v0, v2, p2}, Lcom/samsung/android/app/music/settings/BackupRestoreReceiver;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3

    .line 275
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/settings/BackupRestoreReceiver;->b(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "music_settings.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p3, p4}, Lcom/samsung/android/app/music/settings/BackupRestoreReceiver;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p3

    .line 280
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/provider/BackupRestoreUtil;->a(Landroid/content/Context;Ljava/lang/String;)V

    return p3
.end method

.method static synthetic b(Lcom/samsung/android/app/music/settings/BackupRestoreReceiver;Landroid/content/Context;Landroid/os/Bundle;)I
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/settings/BackupRestoreReceiver;->a(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result p0

    return p0
.end method

.method private b(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 563
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/settings/BackupRestoreReceiver;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "play_speed"

    const/high16 v2, 0x3f800000    # 1.0f

    .line 564
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    const-string v2, "smart_volume"

    const/4 v3, 0x0

    .line 565
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v4, "skip_silences"

    .line 567
    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "lock_screen"

    .line 569
    invoke-static {v0, p1}, Lcom/samsung/android/app/music/library/framework/PackageManagerCompat;->a(Landroid/content/SharedPreferences;Landroid/content/Context;)Z

    move-result v6

    .line 568
    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const-string v6, "screen_off_music"

    .line 571
    invoke-interface {v0, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_0

    const-string v6, "screen_off_music"

    .line 573
    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    .line 575
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v6, "screen_off_music"

    .line 576
    invoke-virtual {v0, v6, v7}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 578
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v6

    const-string v8, "edge_lighting"

    .line 579
    invoke-virtual {v6, v8, v7}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 581
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v7

    const-string v8, "cross_fade"

    invoke-virtual {v7, v8, v3}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 583
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v8, "play_speed"

    .line 584
    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "smart_volume"

    .line 585
    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "skip_silences"

    .line 587
    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    .line 586
    invoke-virtual {v7, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "lock_screen"

    .line 588
    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "screen_off_music"

    .line 590
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v8

    .line 589
    invoke-virtual {v7, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "edge_lighting"

    .line 591
    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    invoke-static {p1}, Lcom/samsung/android/app/music/util/TabUtils;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 594
    invoke-static {p1}, Lcom/samsung/android/app/music/util/TabUtils;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v8, "tab_menu_list"

    .line 595
    invoke-virtual {v7, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "tab_menu_list_order"

    .line 596
    invoke-virtual {v7, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "cross_fade"

    .line 597
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "SMUSIC-Backup"

    .line 599
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Music settings play speed :  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " smart volume : "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " lock screen : "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " screen off music : "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " edgeLighting : "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " tab : "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " allTab "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " crossFade : "

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7
.end method

.method private b(Landroid/content/Context;IIILandroid/os/Bundle;)V
    .locals 2

    .line 618
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.intent.action.RESPONSE_BACKUP_MUSIC_SETTING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "RESULT"

    .line 619
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "ERR_CODE"

    .line 620
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "REQ_SIZE"

    .line 621
    invoke-virtual {v0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "SOURCE"

    const-string p3, "SOURCE"

    .line 622
    invoke-virtual {p5, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "EXPORT_SESSION_TIME"

    const-string p3, "EXPORT_SESSION_TIME"

    .line 623
    invoke-virtual {p5, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "com.wssnps.permission.COM_WSSNPS"

    .line 624
    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private b(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ApplySharedPref"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 484
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/settings/BackupRestoreReceiver;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    :try_start_0
    const-string v1, "play_speed"

    .line 486
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    const/4 v2, 0x0

    :try_start_1
    const-string v3, "smart_volume"

    .line 492
    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const/4 v3, 0x0

    :goto_1
    :try_start_2
    const-string v4, "skip_silences"

    .line 499
    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 498
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    const/4 v4, 0x0

    :goto_2
    :try_start_3
    const-string v5, "lock_screen"

    .line 505
    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    .line 507
    :catch_3
    invoke-static {v0, p1}, Lcom/samsung/android/app/music/library/framework/PackageManagerCompat;->a(Landroid/content/SharedPreferences;Landroid/content/Context;)Z

    move-result v5

    :goto_3
    :try_start_4
    const-string v6, "screen_off_music"

    .line 512
    invoke-virtual {p2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    const/4 v6, 0x1

    .line 516
    :goto_4
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v7

    const-string v8, "screen_off_music"

    .line 517
    invoke-virtual {v7, v8, v6}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putBoolean(Ljava/lang/String;Z)V

    :try_start_5
    const-string v6, "cross_fade"

    .line 531
    invoke-virtual {p2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    const/4 p2, 0x0

    .line 535
    :goto_5
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v2

    const-string v6, "cross_fade"

    invoke-virtual {v2, v6, p2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putInt(Ljava/lang/String;I)V

    .line 537
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "play_speed"

    .line 539
    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    const-string v0, "smart_volume"

    .line 540
    invoke-interface {p2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "lock_screen"

    .line 541
    invoke-interface {p2, v0, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "skip_silences"

    .line 542
    invoke-interface {p2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 543
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 545
    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.samsung.android.app.music.core.state.SETTING_CHANGED"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "play_speed"

    .line 546
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    const-string v0, "smart_volume"

    .line 547
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "skip_silences"

    .line 548
    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "com.sec.android.app.music"

    .line 549
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 550
    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/settings/BackupRestoreReceiver;Landroid/content/Context;IIILandroid/os/Bundle;)V
    .locals 0

    .line 73
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/app/music/settings/BackupRestoreReceiver;->a(Landroid/content/Context;IIILandroid/os/Bundle;)V

    return-void
.end method

.method private c(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 554
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/util/TabUtils;->a(Landroid/content/Context;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 110
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SMUSIC-Backup"

    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p1, "SMUSIC-Backup"

    const-string p2, " Sender\'s extra values are null. Please check backup request."

    .line 114
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v1, "com.samsung.android.intent.action.REQUEST_BACKUP_MUSIC_SETTING"

    .line 118
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    new-instance v0, Lcom/samsung/android/app/music/settings/BackupRestoreReceiver$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/music/settings/BackupRestoreReceiver$1;-><init>(Lcom/samsung/android/app/music/settings/BackupRestoreReceiver;Landroid/content/Context;Landroid/os/Bundle;)V

    .line 127
    invoke-virtual {v0}, Lcom/samsung/android/app/music/settings/BackupRestoreReceiver$1;->start()V

    goto :goto_0

    :cond_1
    const-string v1, "com.samsung.android.intent.action.REQUEST_RESTORE_MUSIC_SETTING"

    .line 128
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    new-instance v0, Lcom/samsung/android/app/music/settings/BackupRestoreReceiver$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/music/settings/BackupRestoreReceiver$2;-><init>(Lcom/samsung/android/app/music/settings/BackupRestoreReceiver;Landroid/content/Context;Landroid/os/Bundle;)V

    .line 137
    invoke-virtual {v0}, Lcom/samsung/android/app/music/settings/BackupRestoreReceiver$2;->start()V

    :cond_2
    :goto_0
    return-void
.end method
