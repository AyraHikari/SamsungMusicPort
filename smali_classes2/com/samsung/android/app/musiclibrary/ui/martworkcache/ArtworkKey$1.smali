.class final Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$1;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$SearchKey;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$SearchKey;
    .locals 4

    .line 62
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$SearchKey;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->a:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v2, v3, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$SearchKey;-><init>(Landroid/net/Uri;ILandroid/graphics/Bitmap$Config;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$1;)V

    return-object v0
.end method

.method protected synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$1;->a()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$SearchKey;

    move-result-object v0

    return-object v0
.end method
