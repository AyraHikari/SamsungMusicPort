.class Lcom/samsung/android/app/music/martworkcache/loaders/MilkArtLoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/martworkcache/loaders/MilkArtLoader;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/martworkcache/loaders/MilkArtLoader;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/martworkcache/loaders/MilkArtLoader;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/samsung/android/app/music/martworkcache/loaders/MilkArtLoader$1;->a:Lcom/samsung/android/app/music/martworkcache/loaders/MilkArtLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lokhttp3/OkHttpClient;
    .locals 2

    const-wide/16 v0, 0x2710

    .line 35
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/OKHttpServiceNetworkLoaderKt;->b(J)Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/samsung/android/app/music/martworkcache/loaders/MilkArtLoader$1;->a()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method
