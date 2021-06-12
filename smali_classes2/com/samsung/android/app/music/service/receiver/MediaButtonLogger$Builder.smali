.class public Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;)Ljava/lang/String;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;)Ljava/lang/String;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;)Ljava/lang/String;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;)Ljava/lang/String;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;->d:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method public a()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;
    .locals 2

    .line 98
    new-instance v0, Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger;-><init>(Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$1;)V

    return-object v0
.end method
