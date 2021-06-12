.class public Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager$OnUserChangedListener;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/app/Application;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager$OnUserChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

.field private e:Z

.field private f:Z

.field private g:J

.field private final h:Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager;->c:Ljava/util/List;

    const-wide/16 v0, 0x0

    .line 36
    iput-wide v0, p0, Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager;->g:J

    .line 98
    new-instance v0, Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager$1;-><init>(Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager;->h:Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;

    .line 47
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager;->a:Landroid/content/Context;

    .line 48
    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager;->b:Landroid/app/Application;

    .line 49
    iget-object p1, p0, Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager;->d:Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    .line 50
    iget-object p1, p0, Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager;->d:Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager;->h:Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 74
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager;->b:Landroid/app/Application;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Landroid/app/Application;Ljava/lang/String;)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    const-string v0, "SMUSIC-SV"

    const-string v1, "notifyStreamingFeatureChanged"

    .line 78
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 80
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager$OnUserChangedListener;

    .line 82
    invoke-interface {v1, p1}, Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager$OnUserChangedListener;->a(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager;->f:Z

    return p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager;Z)Z
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager;->b(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager;Z)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager;->a(Z)V

    return-void
.end method

.method private b(Z)Z
    .locals 3

    .line 87
    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager;->e:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 88
    iput-boolean v2, p0, Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager;->e:Z

    return v1

    .line 91
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager;->f:Z

    if-eq v0, p1, :cond_1

    .line 92
    iput-boolean p1, p0, Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager;->f:Z

    return v2

    :cond_1
    return v1
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager$OnUserChangedListener;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(ZJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 64
    iget-wide v0, p0, Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager;->g:J

    cmp-long v0, v0, p2

    if-eqz v0, :cond_0

    .line 65
    iput-wide p2, p0, Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager;->g:J

    if-eqz p1, :cond_0

    const-string p1, "SV"

    const-string p2, "requestLoginBySignInFailed"

    .line 67
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object p1, p0, Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager;->d:Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->d()V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager;->d:Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager;->h:Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->b(Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;)V

    return-void
.end method
