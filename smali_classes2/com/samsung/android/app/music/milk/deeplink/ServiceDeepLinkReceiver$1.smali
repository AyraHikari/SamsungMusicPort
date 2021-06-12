.class Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver$1;
.super Lio/reactivex/observers/DisposableSingleObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/observers/DisposableSingleObserver<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver$1;->a:Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;

    invoke-direct {p0}, Lio/reactivex/observers/DisposableSingleObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 4

    .line 59
    invoke-static {}, Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BasicApis.doStoreData - onNext : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 61
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver$1;->a:Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;->a(Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "com.samsung.radio.start_client.force_update_version"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver$1;->a:Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;->a(Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver$1;->a:Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;

    .line 64
    invoke-static {v1}, Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;->a(Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 66
    invoke-static {}, Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BasicApis.doStoreData - update ver. : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", current ver. : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 72
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-le p1, v0, :cond_0

    .line 75
    invoke-static {}, Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BasicApis.doStoreData - update exist, launch UI"

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver$1;->a:Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;->a(Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;)Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    .line 79
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->a()Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->c()Z

    goto :goto_0

    .line 83
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver$1;->a:Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;->a(Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0b022d

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 84
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 87
    :cond_2
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->a()Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->d()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 92
    invoke-static {}, Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BasicApis.doStoreData - onError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver$1;->a:Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;->a(Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "withDiscover"

    invoke-static {v0}, Lcom/samsung/android/app/music/ActivityLauncher;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 95
    invoke-static {}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->a()Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->d()V

    return-void
.end method

.method public synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 56
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver$1;->a(Ljava/lang/Boolean;)V

    return-void
.end method
