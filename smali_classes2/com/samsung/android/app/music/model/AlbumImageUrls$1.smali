.class final Lcom/samsung/android/app/music/model/AlbumImageUrls$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/model/AlbumImageUrls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/samsung/android/app/music/model/ImageUrl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/samsung/android/app/music/model/ImageUrl;Lcom/samsung/android/app/music/model/ImageUrl;)I
    .locals 2

    .line 19
    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/ImageUrl;->getSize()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/ImageUrl;->getSize()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 21
    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/ImageUrl;->getSize()I

    move-result p2

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/ImageUrl;->getSize()I

    move-result p1

    if-ge p2, p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 16
    check-cast p1, Lcom/samsung/android/app/music/model/ImageUrl;

    check-cast p2, Lcom/samsung/android/app/music/model/ImageUrl;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/model/AlbumImageUrls$1;->compare(Lcom/samsung/android/app/music/model/ImageUrl;Lcom/samsung/android/app/music/model/ImageUrl;)I

    move-result p1

    return p1
.end method
