.class final Lcom/samsung/android/app/music/martworkcache/MArtworkUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->h()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Lokhttp3/OkHttpClient;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lokhttp3/OkHttpClient;
    .locals 1

    .line 87
    invoke-static {}, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->b()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 84
    invoke-virtual {p0}, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils$1;->a()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method
