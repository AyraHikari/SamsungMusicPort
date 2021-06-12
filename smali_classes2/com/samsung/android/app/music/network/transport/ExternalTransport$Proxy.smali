.class public Lcom/samsung/android/app/music/network/transport/ExternalTransport$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/network/transport/ExternalTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# static fields
.field private static a:Lcom/samsung/android/app/music/network/transport/ExternalTransport;


# direct methods
.method public static a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/ExternalTransport;
    .locals 1

    .line 24
    sget-object v0, Lcom/samsung/android/app/music/network/transport/ExternalTransport$Proxy;->a:Lcom/samsung/android/app/music/network/transport/ExternalTransport;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/samsung/android/app/music/network/transport/ExternalTransport;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/network/transport/ExternalTransport;

    sput-object p0, Lcom/samsung/android/app/music/network/transport/ExternalTransport$Proxy;->a:Lcom/samsung/android/app/music/network/transport/ExternalTransport;

    .line 27
    :cond_0
    sget-object p0, Lcom/samsung/android/app/music/network/transport/ExternalTransport$Proxy;->a:Lcom/samsung/android/app/music/network/transport/ExternalTransport;

    return-object p0
.end method
