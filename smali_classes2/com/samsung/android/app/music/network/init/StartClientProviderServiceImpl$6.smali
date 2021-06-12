.class Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;->a(Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StringGetter;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$6;->a:Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    .line 190
    iget-object p1, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$6;->a:Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;

    invoke-static {p1}, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;->d(Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "StartClientProviderServiceImpl"

    const-string v0, "doOnSubscribe. try to get url from server."

    .line 191
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object p1, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$6;->a:Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;->f()V

    :cond_0
    return-void
.end method
