.class final Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$1;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$ParamsSize;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$ParamsSize;
    .locals 1

    .line 47
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$ParamsSize;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$ParamsSize;-><init>()V

    return-object v0
.end method

.method protected synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$1;->a()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$ParamsSize;

    move-result-object v0

    return-object v0
.end method
