.class public abstract Lcom/samsung/android/sdk/ppmt/display/DisplayManager;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 96
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/sdk/ppmt/PpmtReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "card_clear"

    .line 97
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p0, "com.samsung.android.sdk.ppmt.RECEIVER_EVENTS"

    .line 98
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "extra_action"

    const-string v1, "card_clear"

    .line 99
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "mid"

    .line 100
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "targetid"

    .line 101
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 82
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/sdk/ppmt/PpmtReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "card_click"

    .line 83
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p0, "com.samsung.android.sdk.ppmt.RECEIVER_EVENTS"

    .line 84
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "extra_action"

    const-string v1, "card_click"

    .line 85
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "mid"

    .line 86
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "targetid"

    .line 87
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p0, 0x0

    .line 88
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p0, p1, :cond_0

    .line 89
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "card_action"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$ImageDecodingException;
        }
    .end annotation

    .line 34
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 35
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 37
    :cond_0
    new-instance p0, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$ImageDecodingException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$ImageDecodingException;-><init>()V

    throw p0

    .line 41
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_2

    return-object p0

    .line 43
    :cond_2
    new-instance p0, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$ImageDecodingException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$ImageDecodingException;-><init>()V

    throw p0
.end method

.method public static a(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/display/DisplayManager;
    .locals 1

    const-string v0, "1"

    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    new-instance p0, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;-><init>()V

    return-object p0

    :cond_0
    const-string v0, "2"

    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 28
    new-instance p0, Lcom/samsung/android/sdk/ppmt/display/PopupDisplayManager;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ppmt/display/PopupDisplayManager;-><init>()V

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 75
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$ImageDecodingException;
        }
    .end annotation

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 62
    invoke-static {v1}, Lcom/samsung/android/sdk/ppmt/display/DisplayManager;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$ImageDecodingException;
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 50
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 52
    :cond_0
    new-instance p0, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$ImageDecodingException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$ImageDecodingException;-><init>()V

    throw p0

    .line 56
    :cond_1
    new-instance p0, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$ImageDecodingException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$ImageDecodingException;-><init>()V

    throw p0
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;Landroid/os/Bundle;Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;)V
.end method

.method public abstract a(Landroid/content/Context;I)Z
.end method
