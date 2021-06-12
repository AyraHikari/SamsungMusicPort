.class public final Lcom/samsung/android/app/music/MusicApplication;
.super Lcom/samsung/android/app/musiclibrary/BaseApplication;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/MusicApplication$OnApplicationCreateCallback;,
        Lcom/samsung/android/app/music/MusicApplication$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/MusicApplication$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/MusicApplication$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/MusicApplication$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/MusicApplication;->a:Lcom/samsung/android/app/music/MusicApplication$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/BaseApplication;-><init>()V

    return-void
.end method

.method private final a(Ljava/lang/String;)Lcom/samsung/android/app/music/MusicApplication$OnApplicationCreateCallback;
    .locals 2

    .line 61
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0xc3b2db1

    if-eq v0, v1, :cond_2

    const v1, 0x547bea9

    if-eq v0, v1, :cond_1

    const v1, 0x5fc2a700

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "com.sec.android.app.music:dataService"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 64
    new-instance p1, Lcom/samsung/android/app/music/ProviderProcessApplication;

    invoke-direct {p1}, Lcom/samsung/android/app/music/ProviderProcessApplication;-><init>()V

    check-cast p1, Lcom/samsung/android/app/music/MusicApplication$OnApplicationCreateCallback;

    goto :goto_1

    :cond_1
    const-string v0, "com.sec.android.app.music:playerService"

    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 63
    new-instance p1, Lcom/samsung/android/app/music/ServiceProcessApplication;

    invoke-direct {p1}, Lcom/samsung/android/app/music/ServiceProcessApplication;-><init>()V

    check-cast p1, Lcom/samsung/android/app/music/MusicApplication$OnApplicationCreateCallback;

    goto :goto_1

    :cond_2
    const-string v0, "com.sec.android.app.music"

    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 62
    new-instance p1, Lcom/samsung/android/app/music/UiProcessApplication;

    invoke-direct {p1}, Lcom/samsung/android/app/music/UiProcessApplication;-><init>()V

    check-cast p1, Lcom/samsung/android/app/music/MusicApplication$OnApplicationCreateCallback;

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method private final a(Lcom/samsung/android/app/music/MusicApplication$OnApplicationCreateCallback;)V
    .locals 7

    if-eqz p1, :cond_0

    .line 74
    move-object v0, p0

    check-cast v0, Landroid/app/Application;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/MusicApplication$OnApplicationCreateCallback;->a(Landroid/app/Application;)V

    .line 76
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->a:Lkotlinx/coroutines/GlobalScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/samsung/android/app/music/MusicApplication$run$$inlined$also$lambda$1;

    const/4 v4, 0x0

    invoke-direct {v0, p1, v4, p0}, Lcom/samsung/android/app/music/MusicApplication$run$$inlined$also$lambda$1;-><init>(Lcom/samsung/android/app/music/MusicApplication$OnApplicationCreateCallback;Lkotlin/coroutines/Continuation;Lcom/samsung/android/app/music/MusicApplication;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    const-string v0, "Application"

    const-string v1, "onCreate() S"

    const/4 v2, 0x1

    .line 47
    invoke-static {v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/BaseApplication;->onCreate()V

    .line 54
    sget-object v0, Lcom/samsung/android/app/musiclibrary/BaseApplication;->b:Lcom/samsung/android/app/musiclibrary/BaseApplication$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/BaseApplication$Companion;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/MusicApplication;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/MusicApplication$OnApplicationCreateCallback;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/MusicApplication;->a(Lcom/samsung/android/app/music/MusicApplication$OnApplicationCreateCallback;)V

    .line 55
    new-instance v0, Lcom/samsung/android/app/music/AllProcessApplication;

    invoke-direct {v0}, Lcom/samsung/android/app/music/AllProcessApplication;-><init>()V

    check-cast v0, Lcom/samsung/android/app/music/MusicApplication$OnApplicationCreateCallback;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/MusicApplication;->a(Lcom/samsung/android/app/music/MusicApplication$OnApplicationCreateCallback;)V

    const-string v0, "Application"

    const-string v1, "onCreate() X"

    .line 57
    invoke-static {v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
