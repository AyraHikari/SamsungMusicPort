.class final Lcom/samsung/android/app/music/util/ImageUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/util/ImageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/samsung/android/app/music/model/base/ImageModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/base/ImageModel;Lcom/samsung/android/app/music/model/base/ImageModel;)I
    .locals 2

    .line 22
    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/base/ImageModel;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/ImageModel;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 24
    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/base/ImageModel;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/ImageModel;->getWidth()I

    move-result p1

    if-ge p2, p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 19
    check-cast p1, Lcom/samsung/android/app/music/model/base/ImageModel;

    check-cast p2, Lcom/samsung/android/app/music/model/base/ImageModel;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/util/ImageUtils$1;->a(Lcom/samsung/android/app/music/model/base/ImageModel;Lcom/samsung/android/app/music/model/base/ImageModel;)I

    move-result p1

    return p1
.end method
