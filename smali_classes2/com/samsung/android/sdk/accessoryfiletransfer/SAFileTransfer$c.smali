.class public final Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation


# instance fields
.field private synthetic a:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;


# virtual methods
.method public final a(II)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;->a:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->a(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/accessoryfiletransfer/a$a;

    iget v2, v2, Lcom/samsung/android/sdk/accessoryfiletransfer/a$a;->a:I

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;->a:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    invoke-static {v2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->b(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;->a:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    invoke-static {p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->b(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    move-result-object p1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0, p2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;->a(II)V

    :cond_1
    return-void
.end method

.method public final a(ILjava/lang/String;I)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;->a:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->a(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/accessoryfiletransfer/a$a;

    iget v3, v2, Lcom/samsung/android/sdk/accessoryfiletransfer/a$a;->a:I

    if-ne v3, p1, :cond_0

    iget-object v3, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;->a:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    invoke-static {v3}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->b(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v0, v2, Lcom/samsung/android/sdk/accessoryfiletransfer/a$a;->b:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Lcom/samsung/android/sdk/accessoryfiletransfer/a$a;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_temp_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "[SA_SDK]SAFileTransfer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "temp file deleted successfully - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/samsung/android/sdk/accessoryfiletransfer/a$a;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string v0, "[SA_SDK]SAFileTransfer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "temp file could not be deleted - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "[SA_SDK]SAFileTransfer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "temp file could not be deleted - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    iget-object v5, v2, Lcom/samsung/android/sdk/accessoryfiletransfer/a$a;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iput-object v3, v2, Lcom/samsung/android/sdk/accessoryfiletransfer/a$a;->b:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iget-object v0, v2, Lcom/samsung/android/sdk/accessoryfiletransfer/a$a;->b:Ljava/lang/String;

    if-eqz v0, :cond_4

    if-nez p3, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lcom/samsung/android/sdk/accessoryfiletransfer/a$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_temp_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, v2, Lcom/samsung/android/sdk/accessoryfiletransfer/a$a;->b:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-object v3, v2, Lcom/samsung/android/sdk/accessoryfiletransfer/a$a;->b:Ljava/lang/String;

    if-nez v0, :cond_4

    const/4 p3, 0x2

    :cond_4
    :goto_2
    invoke-static {p3}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->a(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;->a:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->b(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v2, p2, p3}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;->a(ILjava/lang/String;I)V

    iget-object p2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;->a:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    invoke-static {p2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->a(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->a()I

    move-result p2

    if-ne p1, p2, :cond_5

    invoke-static {}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->b()I

    :cond_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;->a:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->c(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x9

    if-ne p3, v0, :cond_7

    const-string p1, "[SA_SDK]SAFileTransfer"

    const-string p2, "Ignoring onTransferCompleted because setup in progress"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;->a:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->a(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;Z)Z

    invoke-static {}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->a()I

    move-result v0

    if-ne p1, v0, :cond_8

    invoke-static {}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->b()I

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;->a:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->a(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;->a:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->b(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-static {p3}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->a(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;->a:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->b(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;->a(ILjava/lang/String;I)V

    :cond_8
    return-void
.end method

.method public final a([II)V
    .locals 8

    if-nez p1, :cond_0

    const/16 p1, 0xd

    invoke-static {p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->b(I)V

    iget-object p2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;->a:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    invoke-static {p2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->b(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;->a(I)V

    return-void

    :cond_0
    array-length v0, p1

    new-array v0, v0, [I

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget v4, p1, v2

    iget-object v5, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;->a:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    invoke-static {v5}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->a(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/sdk/accessoryfiletransfer/a$a;

    iget v7, v7, Lcom/samsung/android/sdk/accessoryfiletransfer/a$a;->a:I

    if-ne v7, v4, :cond_1

    iget-object v7, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;->a:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    invoke-static {v7}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->b(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v0, v3

    add-int/lit8 v3, v3, 0x1

    iget-object v7, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;->a:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    invoke-static {v7}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->a(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v7

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;->a:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    invoke-static {p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->b(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-static {p2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->b(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;->a:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    invoke-static {p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->b(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;->a(I)V

    :cond_4
    return-void
.end method
