.class public Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 581
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 579
    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$Builder;->b:Z

    .line 582
    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$Builder;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$Builder;)Landroid/content/Context;
    .locals 0

    .line 575
    iget-object p0, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$Builder;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$Builder;)Z
    .locals 0

    .line 575
    iget-boolean p0, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$Builder;->b:Z

    return p0
.end method


# virtual methods
.method public a(Z)Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$Builder;
    .locals 0

    .line 586
    iput-boolean p1, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$Builder;->b:Z

    return-object p0
.end method

.method public a()Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;
    .locals 2

    .line 591
    new-instance v0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;-><init>(Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$Builder;Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$1;)V

    return-object v0
.end method
