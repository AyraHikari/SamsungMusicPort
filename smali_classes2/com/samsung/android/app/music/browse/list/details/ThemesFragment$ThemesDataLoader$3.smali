.class final Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$ThemesDataLoader$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$ThemesDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/samsung/android/app/music/model/base/TagModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/base/TagModel;Lcom/samsung/android/app/music/model/base/TagModel;)I
    .locals 2

    .line 320
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TagModel;->getTagTier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 321
    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/base/TagModel;->getTagTier()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 322
    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 324
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 326
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TagModel;->getTagTier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/base/TagModel;->getTagTier()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 316
    check-cast p1, Lcom/samsung/android/app/music/model/base/TagModel;

    check-cast p2, Lcom/samsung/android/app/music/model/base/TagModel;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$ThemesDataLoader$3;->a(Lcom/samsung/android/app/music/model/base/TagModel;Lcom/samsung/android/app/music/model/base/TagModel;)I

    move-result p1

    return p1
.end method
