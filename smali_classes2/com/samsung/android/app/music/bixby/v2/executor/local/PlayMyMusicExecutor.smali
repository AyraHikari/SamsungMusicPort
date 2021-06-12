.class public final Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/v2/CommandExecutor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$SearchMyMusicTask;,
        Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;,
        Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$OnQueryListener;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "PlayMyMusicExecutor"


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

.field private d:Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;

.field private e:Lcom/samsung/android/app/music/bixby/v2/util/MilkServiceBinder;

.field private f:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

.field private final g:Lcom/samsung/android/app/music/bixby/v2/util/MilkServiceBinder$OnServiceConnectionListener;

.field private final h:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$2;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;->g:Lcom/samsung/android/app/music/bixby/v2/util/MilkServiceBinder$OnServiceConnectionListener;

    .line 141
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$3;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;->h:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;)Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;->d:Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;)Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;->d:Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;Lcom/samsung/android/app/music/bixby/v2/util/MilkServiceBinder;)Lcom/samsung/android/app/music/bixby/v2/util/MilkServiceBinder;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;->e:Lcom/samsung/android/app/music/bixby/v2/util/MilkServiceBinder;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;)Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;->f:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    return-object p1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 51
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;Lcom/samsung/android/app/music/model/UserInfo;)Z
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;->a(Lcom/samsung/android/app/music/model/UserInfo;)Z

    move-result p0

    return p0
.end method

.method private a(Lcom/samsung/android/app/music/model/UserInfo;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 203
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isStreamingUser()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method static synthetic b(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;)Lcom/samsung/android/app/music/bixby/v2/util/MilkServiceBinder$OnServiceConnectionListener;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;->g:Lcom/samsung/android/app/music/bixby/v2/util/MilkServiceBinder$OnServiceConnectionListener;

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;Lcom/samsung/android/app/music/model/UserInfo;)Z
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;->b(Lcom/samsung/android/app/music/model/UserInfo;)Z

    move-result p0

    return p0
.end method

.method private b(Lcom/samsung/android/app/music/model/UserInfo;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 207
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isDrmProductUser()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method static synthetic c(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;)Lcom/samsung/android/app/music/bixby/v2/util/MilkServiceBinder;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;->e:Lcom/samsung/android/app/music/bixby/v2/util/MilkServiceBinder;

    return-object p0
.end method

.method static synthetic d(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;)Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;->h:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;

    return-object p0
.end method

.method static synthetic e(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;)Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;->f:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    return-object p0
.end method

.method static synthetic f(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;)Landroid/content/Context;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic g(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;->c:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    return-object p0
.end method


# virtual methods
.method public execute(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V
    .locals 10
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "myMusic"

    .line 84
    invoke-virtual {p2, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 85
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    sget-object p1, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;->a:Ljava/lang/String;

    const-string p2, "execute() - null parameter."

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, -0x1

    .line 91
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x745283b1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_4

    const v2, -0x26a361d8

    if-eq v1, v2, :cond_3

    const v2, -0x6abda89

    if-eq v1, v2, :cond_2

    const v2, 0x427c2dbc

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "Favorite"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const-string v1, "MostPlay"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    const-string v1, "AddedRecently"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    const-string v1, "RecentPlay"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x4

    :cond_5
    :goto_0
    packed-switch v0, :pswitch_data_0

    const-wide/16 v0, -0xe

    :goto_1
    move-wide v6, v0

    goto :goto_2

    :pswitch_0
    const-wide/16 v0, -0xd

    goto :goto_1

    :pswitch_1
    const-wide/16 v0, -0xc

    goto :goto_1

    :pswitch_2
    const-wide/16 v0, -0xb

    goto :goto_1

    .line 107
    :goto_2
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;->b:Landroid/content/Context;

    .line 108
    iput-object p3, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;->c:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    .line 110
    new-instance p3, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$SearchMyMusicTask;

    new-instance v8, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$1;

    invoke-direct {v8, p0, p2, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$1;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;Ljava/lang/String;Landroid/content/Context;)V

    const/4 v9, 0x0

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$SearchMyMusicTask;-><init>(Landroid/content/Context;JLcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$OnQueryListener;Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$1;)V

    new-array p1, v3, [Ljava/lang/Void;

    .line 127
    invoke-virtual {p3, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$SearchMyMusicTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
