.class public Lcom/samsung/android/app/music/network/init/StartClientProviderClientImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/network/init/StartClientProvider;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderClientImpl;->a:Landroid/content/Context;

    .line 42
    iget-object p1, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderClientImpl;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderClientImpl;->b:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    .line 43
    iget-object p1, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderClientImpl;->b:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->a(Landroid/content/ServiceConnection;)Z

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/network/init/StartClientProviderClientImpl;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderClientImpl;->b:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/network/init/StartClientProviderClientImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderClientImpl;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/samsung/android/app/music/network/init/StartClientProviderClientImpl;)Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderClientImpl;->c:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderClientImpl;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "StartClientProviderClientImpl"

    const-string v1, "getServerUrl."

    .line 52
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderClientImpl;->b:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->g()Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/app/music/util/rx/MusicSchedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/network/init/StartClientProviderClientImpl$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/network/init/StartClientProviderClientImpl$1;-><init>(Lcom/samsung/android/app/music/network/init/StartClientProviderClientImpl;)V

    .line 55
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lio/reactivex/Observable;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 67
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderClientImpl;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderClientImpl;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/samsung/android/app/music/network/init/StartClientProviderClientImpl;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderClientImpl;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderClientImpl;->d:Ljava/lang/String;

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderClientImpl;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderClientImpl;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/samsung/android/app/music/network/init/StartClientProviderClientImpl;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderClientImpl;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderClientImpl;->e:Ljava/lang/String;

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderClientImpl;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderClientImpl;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderClientImpl;->c:Ljava/lang/String;

    return-object v0
.end method
