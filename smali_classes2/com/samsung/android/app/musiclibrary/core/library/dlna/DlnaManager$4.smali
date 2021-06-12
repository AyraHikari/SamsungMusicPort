.class Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)V
    .locals 0

    .line 410
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private extractSeed(Lcom/samsung/android/allshare/Item;)Ljava/lang/String;
    .locals 0

    .line 495
    invoke-static {p1}, Lcom/samsung/android/allshare/extension/ItemExtractor;->extract(Lcom/samsung/android/allshare/Item;)Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 497
    invoke-virtual {p1}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->getSeedString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private onUpdateDlnaDB(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const-string v0, "SV-Dlna"

    .line 503
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFlatBrowseResponseListener > onUpdateDlnaDB itemList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    .line 504
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1400(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/allshare/extension/UniqueItemArray;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/allshare/extension/UniqueItemArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 503
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 511
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1400(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/allshare/extension/UniqueItemArray;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/allshare/extension/UniqueItemArray;->size()I

    move-result v1

    .line 512
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1500(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)I

    move-result v2

    :goto_0
    if-ge v2, v1, :cond_3

    .line 514
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1400(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/allshare/extension/UniqueItemArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/allshare/extension/UniqueItemArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/allshare/Item;

    .line 515
    invoke-virtual {v3}, Lcom/samsung/android/allshare/Item;->getURI()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 517
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "provider_id"

    .line 518
    invoke-virtual {v5, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "provider_name"

    .line 519
    invoke-virtual {v5, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "artist"

    .line 520
    invoke-virtual {v3}, Lcom/samsung/android/allshare/Item;->getArtist()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "album"

    .line 522
    invoke-virtual {v3}, Lcom/samsung/android/allshare/Item;->getAlbumTitle()Ljava/lang/String;

    move-result-object v7

    .line 521
    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "album_id"

    const/4 v7, -0x1

    .line 524
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "title"

    .line 525
    invoke-virtual {v3}, Lcom/samsung/android/allshare/Item;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "_data"

    .line 526
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    invoke-virtual {v3}, Lcom/samsung/android/allshare/Item;->getThumbnail()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v6, "album_art"

    .line 531
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 530
    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v4, "mime_type"

    .line 534
    invoke-virtual {v3}, Lcom/samsung/android/allshare/Item;->getMimetype()Ljava/lang/String;

    move-result-object v6

    .line 533
    invoke-virtual {v5, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "duration"

    .line 536
    invoke-virtual {v3}, Lcom/samsung/android/allshare/Item;->getDuration()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long v6, v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 535
    invoke-virtual {v5, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "_size"

    .line 537
    invoke-virtual {v3}, Lcom/samsung/android/allshare/Item;->getFileSize()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "extension"

    .line 539
    invoke-virtual {v3}, Lcom/samsung/android/allshare/Item;->getExtension()Ljava/lang/String;

    move-result-object v6

    .line 538
    invoke-virtual {v5, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "genre_name"

    .line 541
    invoke-virtual {v3}, Lcom/samsung/android/allshare/Item;->getGenre()Ljava/lang/String;

    move-result-object v6

    .line 540
    invoke-virtual {v5, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->extractSeed(Lcom/samsung/android/allshare/Item;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v4, "seed"

    .line 544
    invoke-virtual {v5, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    :cond_1
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const-string v1, "SV-Dlna"

    .line 548
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mFlatBrowseResponseListener > onUpdateDlnaDB ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") item has null uri."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1400(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/allshare/extension/UniqueItemArray;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/samsung/android/allshare/extension/UniqueItemArray;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    .line 552
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1400(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/allshare/extension/UniqueItemArray;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/allshare/extension/UniqueItemArray;->size()I

    move-result v1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 556
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$800(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$900(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Landroid/net/Uri;

    move-result-object p2

    .line 557
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/ContentValues;

    .line 556
    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result p1

    const-string p2, "SV-Dlna"

    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mFlatBrowseResponseListener > onUpdateDlnaDB "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " items are updated in DB"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1400(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/allshare/extension/UniqueItemArray;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/allshare/extension/UniqueItemArray;->size()I

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1502(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;I)I

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 4

    const-string v0, "SV-Dlna"

    .line 486
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFlatBrowseResponseListener > onCancel deviceName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    .line 487
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1200(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/allshare/extension/FlatProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/allshare/extension/FlatProvider;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 486
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    const-string v1, "com.sec.android.app.music.dlna.flat.searching.info"

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    .line 490
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1200(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/allshare/extension/FlatProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/allshare/extension/FlatProvider;->getID()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    .line 489
    invoke-static {v0, v1, v3, v2}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1300(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public onError(Lcom/samsung/android/allshare/ERROR;)V
    .locals 3

    const-string v0, "SV-Dlna"

    .line 453
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFlatBrowseResponseListener > onError deviceName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    .line 454
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1200(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/allshare/extension/FlatProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/allshare/extension/FlatProvider;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/allshare/ERROR;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 453
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->NETWORK_NOT_AVAILABLE:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto/16 :goto_3

    .line 461
    :cond_0
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->NO_RESPONSE:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/samsung/android/allshare/ERROR;->TIME_OUT:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 463
    :cond_1
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->INVALID_DEVICE:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x3

    goto :goto_3

    .line 465
    :cond_2
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->INVALID_OBJECT:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/samsung/android/allshare/ERROR;->ITEM_NOT_EXIST:Lcom/samsung/android/allshare/ERROR;

    .line 466
    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 468
    :cond_3
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->PERMISSION_NOT_ALLOWED:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/samsung/android/allshare/ERROR;->BAD_RESPONSE:Lcom/samsung/android/allshare/ERROR;

    .line 469
    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/samsung/android/allshare/ERROR;->FAIL:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/samsung/android/allshare/ERROR;->FEATURE_NOT_SUPPORTED:Lcom/samsung/android/allshare/ERROR;

    .line 470
    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/samsung/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/samsung/android/allshare/ERROR;

    .line 471
    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/samsung/android/allshare/ERROR;->OUT_OF_MEMORY:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 473
    :cond_4
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x6

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    goto :goto_3

    :cond_6
    :goto_0
    const/4 p1, 0x5

    goto :goto_3

    :cond_7
    :goto_1
    const/4 p1, 0x4

    goto :goto_3

    :cond_8
    :goto_2
    const/4 p1, 0x2

    .line 478
    :goto_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.music.dlna.flat.searching.error"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sec.android.app.music.dlna.flat.searching.extra.error"

    .line 479
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "com.sec.android.app.music.dlna.extra.deviceId"

    .line 480
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1200(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/allshare/extension/FlatProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/allshare/extension/FlatProvider;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 481
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$800(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public onFinish()V
    .locals 4

    const-string v0, "SV-Dlna"

    .line 444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFlatBrowseResponseListener > onFinish deviceName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    .line 445
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1200(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/allshare/extension/FlatProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/allshare/extension/FlatProvider;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 444
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    const-string v1, "com.sec.android.app.music.dlna.flat.searching.info"

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    .line 448
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1200(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/allshare/extension/FlatProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/allshare/extension/FlatProvider;->getID()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    .line 447
    invoke-static {v0, v1, v3, v2}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1300(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public onProgress(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Item;",
            ">;)V"
        }
    .end annotation

    const-string v0, "SV-Dlna"

    .line 430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFlatBrowseResponseListener > onProgress deviceName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    .line 431
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1200(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/allshare/extension/FlatProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/allshare/extension/FlatProvider;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "deviceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1200(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/allshare/extension/FlatProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/allshare/extension/FlatProvider;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " items count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 432
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 430
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 435
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1400(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/allshare/extension/UniqueItemArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/extension/UniqueItemArray;->addAll(Ljava/util/Collection;)Z

    .line 437
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1200(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/allshare/extension/FlatProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/allshare/extension/FlatProvider;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1200(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/allshare/extension/FlatProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/allshare/extension/FlatProvider;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->onUpdateDlnaDB(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    const-string v0, "com.sec.android.app.music.dlna.flat.searching.info"

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    .line 439
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1200(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/allshare/extension/FlatProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/allshare/extension/FlatProvider;->getID()Ljava/lang/String;

    move-result-object v2

    .line 438
    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1300(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 6

    const-string v0, "SV-Dlna"

    .line 413
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFlatBrowseResponseListener > onStart deviceName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    .line 414
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1200(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/allshare/extension/FlatProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/allshare/extension/FlatProvider;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 413
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    const-string v1, "com.sec.android.app.music.dlna.flat.searching.info"

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    .line 417
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1200(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/allshare/extension/FlatProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/allshare/extension/FlatProvider;->getID()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 416
    invoke-static {v0, v1, v3, v2}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1300(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;Ljava/lang/String;ILjava/lang/String;)V

    .line 418
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$800(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$900(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "provider_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    .line 420
    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1200(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/allshare/extension/FlatProvider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/allshare/extension/FlatProvider;->getID()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 418
    invoke-virtual {v0, v1, v2, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 421
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1400(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/allshare/extension/UniqueItemArray;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1400(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/allshare/extension/UniqueItemArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/allshare/extension/UniqueItemArray;->clear()V

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    new-instance v1, Lcom/samsung/android/allshare/extension/UniqueItemArray;

    invoke-direct {v1}, Lcom/samsung/android/allshare/extension/UniqueItemArray;-><init>()V

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1402(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;Lcom/samsung/android/allshare/extension/UniqueItemArray;)Lcom/samsung/android/allshare/extension/UniqueItemArray;

    .line 425
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-static {v0, v3}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1502(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;I)I

    return-void
.end method
