.class public final Lcom/samsung/android/app/music/util/ImageUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/samsung/android/app/music/model/base/ImageModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/samsung/android/app/music/util/ImageUtils$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/util/ImageUtils$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/util/ImageUtils;->a:Ljava/util/Comparator;

    return-void
.end method

.method public static a(Ljava/util/List;II)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/ImageModel;",
            ">;II)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 32
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/util/ImageUtils;->b(Ljava/util/List;II)Lcom/samsung/android/app/music/model/base/ImageModel;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/base/ImageModel;->getImageUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Ljava/util/List;II)Lcom/samsung/android/app/music/model/base/ImageModel;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/ImageModel;",
            ">;II)",
            "Lcom/samsung/android/app/music/model/base/ImageModel;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 51
    :cond_0
    sget-object v1, Lcom/samsung/android/app/music/util/ImageUtils;->a:Ljava/util/Comparator;

    invoke-static {p0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 55
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-object v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/model/base/ImageModel;

    .line 56
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/ImageModel;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/ImageModel;->getWidth()I

    move-result v3

    if-ne v3, p1, :cond_2

    move-object p0, v0

    goto :goto_1

    .line 62
    :cond_2
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/ImageModel;->getWidth()I

    move-result v3

    if-le v3, p1, :cond_3

    move-object v1, v2

    goto :goto_0

    :cond_3
    move-object p0, v2

    move-object v2, v0

    goto :goto_1

    :cond_4
    move-object p0, v0

    move-object v2, p0

    :goto_1
    if-eqz v2, :cond_5

    return-object v2

    :cond_5
    const-string v2, "ImageUtils"

    .line 74
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findBestLargeUrl. no matched url. size - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",  minSize - "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", large - "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", small - "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_6

    return-object v1

    :cond_6
    if-eqz p0, :cond_7

    .line 80
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/base/ImageModel;->getWidth()I

    move-result p1

    if-lt p1, p2, :cond_7

    return-object p0

    :cond_7
    return-object v0
.end method
