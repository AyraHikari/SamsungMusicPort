.class Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceDLNALoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceDLNALoader;-><init>(JLandroid/net/Uri;[Ljava/lang/String;)V
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
.field final synthetic a:J

.field final synthetic b:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceDLNALoader;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceDLNALoader;J)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceDLNALoader$1;->b:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceDLNALoader;

    iput-wide p2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceDLNALoader$1;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lokhttp3/OkHttpClient;
    .locals 3

    .line 33
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceDLNALoader$1;->a:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/OKHttpServiceNetworkLoaderKt;->b(JZ)Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceDLNALoader$1;->a()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method
